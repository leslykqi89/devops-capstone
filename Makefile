DOCKER_IMAGE=apache-image
build:
	docker build -t ${DOCKER_IMAGE} ./images

lint:
	hadolint images/Dockerfile

push:
	docker tag ${DOCKER_IMAGE}:latest 925348302516.dkr.ecr.us-east-1.amazonaws.com/registry-p7:latest
	docker push 925348302516.dkr.ecr.us-east-1.amazonaws.com/registry-p7:latest

start-image:
	docker run --rm --name apache -p 443:8443 ${DOCKER_IMAGE}