node{
    
    stage("Git Clone"){
        git credentialsId: '035d9e7d-04e6-4942-8dd4-2bbff6dee613', url: 'https://github.com/neetimunshi11/docker-java-webapp-simple.git'
        
    }
    stage("maven clean build"){
        def mavenHome = tool name :"maven-3.8.6", type: "maven"
        def mavenCMD = "${mavenHome}/bin/mvn"
        
        sh "${mavenCMD} clean package"
    }
    stage("Build docker image"){
        sh "docker build -t neetimunshi/helloworld-neeti ."
    }
    stage("Docker Push"){
        withCredentials([string(credentialsId: 'DOCKER_HUB_CREDENTIALS', variable: 'DOCKER_HUB_CREDENTIALS')]) {
        sh "docker login -u neetimunshi -p ${DOCKER_HUB_CREDENTIALS}"
        }
        sh "docker push neetimunshi/helloworld-neeti"
    }
    
    stage("Deploy To Kubernetes Cluster"){
       kubernetesDeploy configs: 'helloworld_deployment.yaml', enableConfigSubstitution: true,  kubeconfigId: 'kubecluster'
     }
}
