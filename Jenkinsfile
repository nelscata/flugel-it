#!/usr/bin/env groovy
pipeline {
   agent any

   tools {
      // Install the Maven version configured as "M3" and add it to the path.
      maven "M3"
   }

   stages {
      stage('Build') {
         steps {
            // Get some code from a GitHub repository
            //git 'https://github.com/spring-projects/spring-petclinic'

            //Disabled build for master branch
            //sh "mvn clean package"
            sh "echo 'Master Build disabled'"

         }
      }
   }
}
