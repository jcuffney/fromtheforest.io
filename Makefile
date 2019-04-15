STACK_NAME = from-the-forest-io-${ENV}
TEMPLATE = template.json
REGION = us-east-1

HOSTED_ZONE_ID = Z2A2A7HNYGXO39
CERT_ARN = arn:aws:acm:us-east-1:255964265911:certificate/a8050d39-449b-4390-a90c-367f33c7e286

ifeq ($(ENV), dev)
	DOMAIN_NAME = dev.fromtheforest.io
else
	DOMAIN_NAME = fromtheforest.io
endif

validate:
	aws cloudformation validate-template \
		--template-body file://${TEMPLATE} \
		--region ${REGION}

create:
	aws cloudformation create-stack \
		--stack-name ${STACK_NAME} \
		--template-body file://${TEMPLATE} \
		--region ${REGION} \
		--capabilities CAPABILITY_NAMED_IAM 

update:
	aws cloudformation update-stack \
		--stack-name ${STACK_NAME} \
		--template-body file://${TEMPLATE} \
		--region ${REGION} \
		--capabilities CAPABILITY_NAMED_IAM 

delete:
	aws cloudformation delete-stack \
		--stack-name ${STACK_NAME} \
		--region ${REGION} 

deploy:
	aws cloudformation deploy \
		--stack-name ${STACK_NAME} \
		--template-file ./${TEMPLATE} \
		--no-fail-on-empty-changeset \
		--region ${REGION} \
		--parameter-overrides \
			DomainName=${DOMAIN_NAME} \
			HostedZoneId=${HOSTED_ZONE_ID} \
			AcmCertificateArn=${CERT_ARN} \
		--capabilities CAPABILITY_NAMED_IAM \
		--profile cuffney