STACK_NAME = craftcms-rds 
TEMPLATE = template.json
REGION = us-east-1

# Parameters
DATABASE_NAME = craftcms
USERNAME = username
PASSWORD = password

validate:
	aws cloudformation validate-template \
		--template-body file://${TEMPLATE} \
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
			DatabaseName=${DATABASE_NAME} \
			Username=${USERNAME} \
			Password=${PASSWORD} \
		--region ${REGION} 