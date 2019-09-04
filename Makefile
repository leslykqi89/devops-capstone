DOCKER_IMAGE=apache-image
build:
	docker build -t ${DOCKER_IMAGE} ./images

lint:
	hadolint images/Dockerfile

push:
	docker tag ${DOCKER_IMAGE}:latest ${registryURL}/${DOCKER_IMAGE}:latest
	docker push ${registryURL}/${DOCKER_IMAGE}:latest

start-image:
	docker run --rm --name apache -p 443:8443 ${DOCKER_IMAGE}