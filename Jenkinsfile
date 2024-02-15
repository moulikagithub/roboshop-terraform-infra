pipeline {
    agent {
        node {
            label 'agent-1'
        }      
    }
    options {
                timeout(time: 1, unit: 'HOURS')
                disableConcurrentBuilds() 
                ansiColor('xterm')
            }
    
    
    // build
    stages {
        stage('vpc') {
            steps {
                sh """
                  cd 01-vpc
                  terraform init -reconfigure
                  terraform apply -auto-approve
                """
            }
        }
        stage('sg') {
            steps {
                sh """
                   cd 02-sg
                   terraform init -reconfigure
                   terraform apply -auto-approve
                """
            }
        }
        stage('vpn') {
            steps {
                sh """
                   cd 03-vpn
                   terraform init -reconfigure
                   terraform apply -auto-approve
                """
            }
        }
        stage('db,alb') {
            parallel {
              stage('databases') {
                steps {
                  sh """
                    cd 04-databases
                    terraform init -reconfigure
                    terraform apply -auto-approve
                   """
                }
              }
              stage('app-alb') {
                steps {
                  sh """
                    cd 05-app-alb
                    terraform init -reconfigure
                    terraform apply -auto-approve
                   """
                }
              }
            }
        }
       
    }
  
    post { 
        always { 
            echo 'I will always say Hello again!'
        }
        failure { 
            echo 'runs when their is failure'
        }
        success { 
            echo 'runs when success!'
        }
    }
}
