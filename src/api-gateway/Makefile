STACK_NAME = api-gateway-${ENV}
TEMPLATE = template.json
REGION = us-east-1

# Parameters
BUCKET_NAME = com.diguisepperecipes.api
API_NAME = diguiseppe-recipes
API_DESCRIPTION = "diguiseppe recipes api" 
API_SPEC_KEY = api.yml

validate:
	aws cloudformation validate-template \
		--template-body file://${TEMPLATE} \
		--region ${REGION}

create:
	aws cloudformation create-stack \
		--stack-name ${STACK_NAME} \
		--template-body file://${TEMPLATE} \
		--parameters \
			ParameterKey=ApiName,ParameterValue=${API_NAME} \
			ParameterKey=ApiDescription,ParameterValue=${API_NAME} \
			ParameterKey=ApiSpecBucket,ParameterValue=${BUCKET_NAME} \
			ParameterKey=ApiSpecKey,ParameterValue=${API_SPEC_KEY} \
		--region ${REGION} 

update:
	aws cloudformation update-stack \
		--stack-name ${STACK_NAME} \
		--template-body file://${TEMPLATE} \
		--parameters \
			ParameterKey=ApiName,ParameterValue=${API_NAME} \
			ParameterKey=ApiDescription,ParameterValue=${API_NAME} \
			ParameterKey=ApiSpecBucket,ParameterValue=${BUCKET_NAME} \
			ParameterKey=ApiSpecKey,ParameterValue=${API_SPEC_KEY} \
		--region ${REGION} 

delete:
	# delete bucket (--force removes all non-versioned objects first)
	aws s3 rb s3://${BUCKET_NAME} --region ${REGION} --force

	# delete stack
	aws cloudformation delete-stack \
		--stack-name ${STACK_NAME} \
		--region ${REGION} 

deploy:
	# create bucket
	aws s3 mb s3://${BUCKET_NAME} --region ${REGION}

	# uplaod open api spec
	aws s3 cp ./api.yml s3://${BUCKET_NAME}

	# deploy stack
	aws cloudformation deploy \
		--stack-name ${STACK_NAME} \
		--template-file ./${TEMPLATE} \
		--no-fail-on-empty-changeset \
		--parameter-overrides \
			ApiName=${API_NAME} \
			ApiDescription=${API_DESCRIPTION} \
			ApiSpecBucket=${BUCKET_NAME} \
			ApiSpecKey=${API_SPEC_KEY} \
		--region ${REGION} 