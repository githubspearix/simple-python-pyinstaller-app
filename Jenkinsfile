pipeline {
    agent none
    options {
        skipStagesAfterUnstable()
    }
    stages {
        stage('Deliver') { 
            agent any
            environment { 
                VOLUME = '$(pwd)/sources:/src'
                IMAGE = 'cdrx/pyinstaller-linux:python2'
            }
            steps {
                bat 'sources/build.bat'
            }
            post {
                success {
                    archiveArtifacts "./sources/dist/add2vals.exe" 
                }
            }
        }
    }
}