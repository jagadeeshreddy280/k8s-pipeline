pipeline{
    agent any
    tools {  
        maven 'Maven'  
    }
    stages{
        
        stage("build"){
            steps{
                sh 'mvn clean install package'
            }
        }
        stage('Deploy') {
            steps {
                script{
                deploy adapters: [tomcat9(credentialsId: '6cf8c691-dffc-4427-a663-2a3c7649fb5b', path: '', url: 'http://18.183.36.54:8081')], contextPath: 'Jenkinsfile', war: '**/*.war'
                }
            }
        }
        
    }
}  

