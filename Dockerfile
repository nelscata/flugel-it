# First test for Flugel IT, DevOps Rocks!
FROM jenkins/jenkins:lts
 
# Skip setup wizard
ENV JAVA_OPTS="-Djenkins.install.runSetupWizard=false"
 
# Get plugins
RUN /usr/local/bin/install-plugins.sh \
  workflow-multibranch:latest \
  pipeline-model-definition:latest \
  pipeline-stage-view:latest \
  git:latest \
  credentials:latest

# Go to the correct Directory in order to copy the files into the container
WORKDIR /tmp/path/

EXPOSE 8080
 
# Add groovy script to Jenkins hook
# Setup pipeline and maven
COPY --chown=jenkins:jenkins init.groovy.d/ /var/jenkins_home/init.groovy.d/
 
# There is no CMD or statement. Since jenkins/jenkins:lts image uses an ENTRYPOINT, this image will inherit that behavior.

