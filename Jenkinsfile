println("Importing...")
import org.stsci.Conda
import org.stsci.CondaInstaller
println("Imported...")

pipeline {
    agent any

    stages {
        stage('Bootstrap') {
            steps {
		        cinst = new CondaInstaller("${WORKSPACE}/tmp")
                cinst.install()
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
