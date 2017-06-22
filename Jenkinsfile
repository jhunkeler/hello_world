pipeline {
    agent any

    stages {
        stage('Bootstrap') {
            steps {
                sh '.jenkins/install_conda.sh'
		sh 'PATH=${WORKSPACE}/mc3/bin:$PATH source activate root'
		sh '${WORKSPACE}/mc3/bin/python --version'
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
