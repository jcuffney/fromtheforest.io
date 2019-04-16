STACK_NAME = api-gateway-${ENV}
TEMPLATE = template.json
REGION = us-east-1

# Parameters
API_NAME = api-gateway-${ENV}

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
		--region ${REGION} 

update:
	aws cloudformation update-stack \
		--stack-name ${STACK_NAME} \
		--template-body file://${TEMPLATE} \
		--parameters \
			ParameterKey=ClusterName,ParameterValue=${CLUSTER_NAME} \
		--region ${REGION} 

delete:
	aws cloudformation delete-stack \
		--stack-name ${STACK_NAME} \
		--region ${REGION} 

deploy:
	aws cloudformation deploy \
		--stack-name ${STACK_NAME} \
		--template-file ./${TEMPLATE} \
		--no-fail-on-empty-changeset \
		--parameter-overrides \
			ClusterName=${CLUSTER_NAME} \
		--region ${REGION} 