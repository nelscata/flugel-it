# test-jenkins
Initial test requested by Pablo Planas:

I would like a Jenkins pipeline that builds the Sprint PetClinic Sample Application (https://github.com/spring-projects/spring-petclinic). Using the official Jenkins Docker Image, extend it to build that application (build only). Use groovy scripting and create the Jenkinsfile to setup Jenkins in a local workstation automatically. I expect to checkout the code, run docker build and docker run, to login into the Jenkins UI to trigger the build job.

2nd Assignment

* Feel free to merge any pending PR.
* Create a new PR adding the features described below.
* Deploy all the jenkins stuff you wrote for the first test in an EC2 instance.
* The instance must be provisioned using Terraform and Ansible.
* It must be running in a new vpc, not the default one.
* I expect to be able to launch the whole environment by running terraform apply, and Jenins should be up and running after that.
