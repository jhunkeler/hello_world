pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
		python setup.py install
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
		test -f setup.py
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
