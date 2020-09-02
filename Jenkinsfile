pipeline {
    agent any

    

    stages {
        stage('Build') {
            steps {
                // Get some code from a GitHub repository
                sh 'sudo rm -rf *'
                sh "git clone -b ecr 'https://github.com/vladoosbobrovsky/test_repo.git'"
                
                sh "sudo terraform init test_repo/"
                sh "sudo terraform apply -auto-approve test_repo/"

               
            }

        }
    }
}
