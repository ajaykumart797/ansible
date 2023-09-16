pipeline {
    agent any
    environment{
        DOCKERHUB_USERNAME= "docker9743"
        APP_NAME= "git-ops_project"
        IMAGE_TAG= "${BUILD_NUMBER}"
        IMAGE_NAME= "${DOCKERHUB_USERNAME}"+ "/"+ "${APP_NAME}"
        REGISTRY_CREDS= 'dockerhub'
    }

    stages {
        stage('Run Ansible Playbook Remotely') {
            
                 steps{
                    script{
                        cleanWs()
                    }
                 }            
        }
        stage("checkout"){
           steps{
            script{
               git credentialsId: "5fe52ac0-ce32-426c-93fd-ef113e0a6581",
               url: "https://github.com/ajaykumart797/ansible.git",
               branch: 'main'
               }

            }
           }
        stage("build docker image"){
           steps{
            script{
                docker_image=docker.build "${IMAGE_NAME}"
                
            }
           }
     }
    }
}