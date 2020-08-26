pipeline {
    agent any

    options {
        buildDiscarder(logRotator(numToKeepStr: '10', artifactNumToKeepStr: '10'))
    }

    stages {
        stage('Trigger worsica CICD job') {
            when {
                anyOf {
                    branch 'master'
                    branch 'development'
                }
            }
            steps {
                script {
                    build job: "/${JOB_NAME}".replace('WORSICA.github.io', 'worsica-cicd'),
                          propagate: true
                }
            }
        }
    }
}
