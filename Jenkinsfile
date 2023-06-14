pipeline {
    agent any
    tools {
        maven 'maven3'
    }
    parameters {
        choice(name: 'DEPLOY_ENV', choices: ['QA', 'Stage', 'Prod'], description: 'Deployment environment')
        string(name: 'SERVER_IP', defaultValue: '3.110.159.232', description: 'Server IP')
        string(name: 'S3_BUCKET', defaultValue: 'vprofile-', description: 'S3 bucket')
    }
    environment {
        version = ''
    }
    stages {
        // ... rest of stages same as before
        stage("Upload Artifact s3") {
            steps {
                script {
                    sh "aws s3 cp target/vprofile-${version}.war s3://${S3_BUCKET}/vprofile-${version}-${DEPLOY_ENV}.war"
                }
            }
        }
        stage('Deploy') {
            steps {
                sshagent(credentials: ['ubuntu']) {
                    sh "ssh ubuntu@${SERVER_IP} 'sudo mv ~/vprofile-${version}-${DEPLOY_ENV}.war /var/lib/tomcat9/webapps/'"
                    sh "ssh ubuntu@${SERVER_IP} 'sudo systemctl restart tomcat9'"
                }
            }
        }
    }
}
