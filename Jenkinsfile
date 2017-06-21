pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
		sh 'python setup.py install'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
		sh 'test -f setup.py'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
