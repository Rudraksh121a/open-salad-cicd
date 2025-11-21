pipeline {
    agent any

    stages {
        stage('Code') {
            steps {
                echo 'Cloning the code'
                git url: "https://github.com/Rudraksh121a/open-salad-cicd.git",branch:"main"
                 echo 'Cloning the code successful'
                 sh "ls"
                
            }
            
        }
        
        stage('build') {
            steps {
                echo 'building the code with docker'
                sh "docker compose up "
            }
        }
        
        
        stage('Code1') {
            steps {
                echo 'Cloneing the code'
            }
        }
        
        
        stage('Code2') {
            steps {
                echo 'Cloneing the code'
            }
        }
        
    }
}
