pipeline {
    agent any
    environment {
//         AWS_ACCOUNT_ID="273238733535"
//         AWS_DEFAULT_REGION="us-east-1" 
//         IMAGE_REPO_NAME="jenkins-pipeline-demo"
//         IMAGE_TAG="latest"
//         REPOSITORY_URI = "${AWS_ACCOUNT_ID}.dkr.ecr.${AWS_DEFAULT_REGION}.amazonaws.com/${IMAGE_REPO_NAME}"
           registry = "273238733535.dkr.ecr.us-east-1.amazonaws.com/jenkins-pipeline-demo"
    }
   
    stages {
        
//          stage('Logging into AWS ECR') {
//             steps {
//                 script {
//                 sh "aws ecr get-login-password --region ${AWS_DEFAULT_REGION} | docker login --username AWS --password-stdin ${AWS_ACCOUNT_ID}.dkr.ecr.${AWS_DEFAULT_REGION}.amazonaws.com"
//                 }
                 
//             }
//         }
//           stage('build') {
//             steps {
//                 sh 'javac App.java'
//                 sh 'java App'
                
//             }
//         }
        
//         stage('Cloning Git') {
//             steps {
//                 checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/askandhasharma/logical_test1.git']]])     
//             }
//         }
  
  //  Building Docker images
    stage('Building image') {
      steps{
        script {
            // sh 'java App'
             dockerImage = docker.build registry
        }
      }
    }
   
    // Uploading Docker images into AWS ECR
    stage('Pushing to ECR') {
     steps{  
         script {
//                 sh "docker tag ${IMAGE_REPO_NAME}:${IMAGE_TAG} ${REPOSITORY_URI}:$IMAGE_TAG"
//                 sh "docker push ${AWS_ACCOUNT_ID}.dkr.ecr.${AWS_DEFAULT_REGION}.amazonaws.com/${IMAGE_REPO_NAME}:${IMAGE_TAG}"
                   sh "aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 273238733535.dkr.ecr.us-east-1.amazonaws.com"
                   sh "docker push 273238733535.dkr.ecr.us-east-1.amazonaws.com/jenkins-pipeline-demo:latest"
         }
        }
      }
    }
}
