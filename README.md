# Capstone Project

This project deploys an apache image into Kubernetes (AWS EKS) as a rolling deployment. The docker image version is configured based on the build number.

## Project Structure

### cloudformation

In this folder you can find all the Cloud Formation templates that setup Kubernetes and the repository in ECR.

### images

Here you can find the docker image, this images is based on the image **centos/httpd-24-centos7:2.4**, and includes an index page with a static website.

### kubernetes

This folder includes the deployment and service configuration files used for the Kubernetes configuration.

### resources

This folder includes the screenshots that shown the Jenkins pipeline.
