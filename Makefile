build-image:
	docker build -t apache-image ./images

lint-image:
	hadolint images/Dockerfile

start-image:
	docker run --rm --name apache -p 443:8443 apache-image