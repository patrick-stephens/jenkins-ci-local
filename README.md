# jenkins-ci-local
Simple local Jenkins server

The intention here is to provide a local Jenkins CI server for testing.

## Usage

To run the container: `docker run --name jenkins --rm -p 8080:8080 --env JENKINS_ADMIN_ID=admin --env JENKINS_ADMIN_PASSWORD=password ghcr.io/patrick-stephens/jenkins-ci-local:main`

## Development

To build the container: `docker build -t <image> .`