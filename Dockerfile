FROM jenkins/jenkins
# Disable Java set up wizard
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false
# Add any Jenkins config: https://plugins.jenkins.io/configuration-as-code/
ENV CASC_JENKINS_CONFIG /usr/share/jenkins/ref/casc.yaml
COPY casc.yaml /usr/share/jenkins/ref/casc.yaml
# Install any plugins specified
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt
