node{
    stage("Git Clone"){
        git credentialsId: '035d9e7d-04e6-4942-8dd4-2bbff6dee613', url: 'https://github.com/neetimunshi11/simple-java-maven-app.git'
        
    }
    stage("maven clean build"){
        def mavenHome = tool name :"maven-3.8.6", type: "maven"
        def mavenCMD = "${mavenHome}/bin/mvn"
        
        sh "${mavenCMD} clean package"
    }
    stage("Build docker image"){
        sh "docker build -t neetimunshi/java-helloworld ."
    }
    stage("Docker Push"){
        withCredentials([string(credentialsId: 'DOCKER_HUB_CREDENTIALS', variable: 'DOCKER_HUB_CREDENTIALS')]) {
        sh "docker login -u neetimunshi -p ${DOCKER_HUB_CREDENTIALS}"
        }
        sh "docker push neetimunshi/java-helloworld"
    }
    
    stage("Deploy To Kuberates Cluster"){
              kubernetes {
                yamlFile 'helloworld_deployment.yaml' 
            }
     }


stage("Deploy To Kuberates Cluster"){
        steps{
            script{
                kubernetesDeploy(configs: 'helloworld_deployment.yaml', kubeconfigId: 'KUBENETES_CREDENTIALS')
            }
        }
       
     }
}
