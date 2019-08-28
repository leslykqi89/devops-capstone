STACK_NAME=project7
TEMPLATE_FILE=main.yml
PARAMETER_FILE=parameter.json

create-stack:
	aws cloudformation create-stack  \
		--stack-name ${STACK_NAME} \
		--template-body file://${TEMPLATE_FILE} \
		--parameters file://${PARAMETER_FILE} \
		--region=us-east-1 --capabilities CAPABILITY_IAM

update-stack:
	aws cloudformation update-stack  \
		--stack-name ${STACK_NAME} \
		--template-body file://${TEMPLATE_FILE} \
		--parameters file://${PARAMETER_FILE} \
		--region=us-east-1 --capabilities CAPABILITY_IAM