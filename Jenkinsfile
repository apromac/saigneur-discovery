pipeline {
    agent any
    environment {
        DOCKER_IMAGE_NAME = "saigneur-discovery"
        BUILD_TAG = "v1.0.${BUILD_NUMBER}"
        CONTAINER_NAME = "msaigneur-discovery"
        CONTAINER_PORT = 9102
        IMAGE_DEFAULT_DIR = "/usr/local/microservice/msaigneur"
        VOLUME_NAME = "postgres_data"
    }
    stages {
        stage('Compilation du code source') {
            steps {
                echo 'Compilation du code source ...'
                sh '/usr/local/maven386/bin/mvn -version'
                sh '/usr/local/maven386/bin/mvn clean install -DskipTests'
            }
        }
    }
}
