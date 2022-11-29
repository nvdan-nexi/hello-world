pipeline {
    agent { dockerfile true }

    parameters {
        string(name: 'BUILD_VARIANT', defaultValue:'Debug', description: 'Build variant type')
    }

    stages {
        stage('Pre-setup') {
            steps {
                echo 'Cleaning cache and build'
                sh "./gradlew clean"
            }
        }
        stage('Run Tests') {
            steps {
                echo 'Running Tests'
                sh "./gradlew test"
            }
        }
        stage('Build Source Code') {
            steps {
                echo 'Build Source Code as ${BUILD_VARIANT}'
                script {
                    switch(params.BUILD_VARIANT) {
                        case "Debug": sh "./gradlew assembleDebug"; break
                        case "Release": sh "./gradlew assembleRelease"; break
                    }
                }
            }
        }
    }
}