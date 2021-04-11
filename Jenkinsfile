pipeline {
    agent any

    tools {
      NodeJS 'NodeJS 4.8.6' 
    }

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                sh 'npm install'
            }
            }

        stage('Test') {
            steps {
                echo 'Testing'
                sh 'npm install'
	        sh 'npm test'
            }
        }
        stage('Pachage') {
            steps {
                echo 'Packaging....'
                sh 'npm install'
				sh 'npm run package'
                archiveArtifacts artifacts: '**/distribution/*.zip', fingerprint: true
            }
        }
    }
}
