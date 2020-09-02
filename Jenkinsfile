pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'sudo rm -rf *'
                // Get some code from a GitHub repository
                git 'https://github.com/vladoosbobrovsky/test_repo.git'

                // Run Maven on a Unix agent.
                sh "sudo terraform init"
                sh "sudo terraform apply -auto-approve"

            }

          
        }
    }
}
