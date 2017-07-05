println("Importing...")
import org.stsci.Conda
import org.stsci.CondaInstaller
println("Imported...")

pipeline {
    agent any

    stages {
        stage('Bootstrap') {
            steps {
                sh '.jenkins/install_conda.sh'
            }
        }
        stage('Build') {
            steps {
                echo 'Building..'
		sh '.jenkins/build.sh'
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
