pipeline {
    agent any

    stages {
        stage ('SCM') {
            steps {
                git branch: 'main', url: 'https://AMOL5458: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@github.com/AMOL5458/CDAC_Final_Project.git'
            }
        }
        stage ('docker login') {
            steps {
                sh 'echo dckr_pat_eb50QN1ET0dttnW72gnqc9eNtxw | /usr/bin/docker login -u amol1701 --password-stdin'
            }
        }
        stage ('docker build image') {
            steps {
                sh '/usr/bin/docker image build -t AMOL5458/mywebsite .'
            }
        }
        stage ('docker push image') {
            steps {
                sh '/usr/bin/docker image push AMOL5458/mywebsite'
            }
        }
        stage ('docker remove service') {
            steps {
                sh '/usr/bin/docker service rm myservice'
            }
        }
        stage ('docker create service') {
            steps {
                sh '/usr/bin/docker service create --replicas 5 --name myservice -p 9091:80 AMOL5458/myhttpd'
            }
        }
    }
}    
