# jenkins-ci-local
Simple local Jenkins server

The intention here is to provide a local Jenkins CI server for testing.

To build the container: `docker build -t <image> .`
To run the container: `docker run --name jenkins --rm -p 8080:8080 --env JENKINS_ADMIN_ID=admin --env JENKINS_ADMIN_PASSWORD=password <image>`