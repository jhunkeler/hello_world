pipeline {
    agent any

    stages {
        stage('Bootstrap') {
            steps {
                sh '.jenkins/install_conda.sh'
		sh 'export PATH=${HOME}/mc3/bin:$PATH'
		sh 'python --version'
            }
        }
        stage('Build') {
            steps {
                echo 'Building..'
		sh '${HOME}/mc3/bin/python setup.py install'
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
