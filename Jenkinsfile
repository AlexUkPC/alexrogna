pipeline {
    agent {
        label 'ssh'  
    }
    parameters {
        string(name: 'REF', defaultValue: '\${ghprbActualCommit}', description: 'Commit to build')
    }
    stages {
        stage('Prepare x files') {
           steps {
                sh 'chmod +x *.sh'
                sh 'chmod +x alexrogna/docker-entrypoint.sh'
                sh 'chmod +x alexrogna/bin/*'
            }
        }
        stage('Bundle Install') {
            steps {
                sh '/usr/local/bin/docker-compose -f docker-compose-jenkins.yml run --rm web_alexrogna_jenkins bundle install'
            }
        }
        stage('Webpacker Install') {
            steps {
                sh '/usr/local/bin/docker-compose -f docker-compose-jenkins.yml run --rm web_alexrogna_jenkins bin/rails webpacker:install'
            }
        }
        stage('Stop old containers') {
            steps {
                sh '/usr/local/bin/docker-compose -f docker-compose-jenkins.yml stop'
            }
        }
        stage('Start server') {
            steps {
                sh '/usr/local/bin/docker-compose -f docker-compose-jenkins.yml up -d --remove-orphans --force-recreate'
            }
        }
        stage('Create database') {
            steps {
                sh '/usr/local/bin/docker-compose -f docker-compose-jenkins.yml exec -T --user "$(id -u):$(id -g)" web_alexrogna_jenkins bin/rails db:drop'
                sh '/usr/local/bin/docker-compose -f docker-compose-jenkins.yml exec -T --user "$(id -u):$(id -g)" web_alexrogna_jenkins bin/rails db:create'
            }
        }
        stage('Migrate database') {
            steps {
                sh '/usr/local/bin/docker-compose -f docker-compose-jenkins.yml exec -T --user "$(id -u):$(id -g)" web_alexrogna_jenkins bin/rails db:migrate'
            }
        }
        stage('Seed database') {
            steps {
                sh '/usr/local/bin/docker-compose -f docker-compose-jenkins.yml exec -T --user "$(id -u):$(id -g)" web_alexrogna_jenkins bin/rails db:seed'
            }
        }
        stage('Wait for server to start') {
            steps {
                timeout(10) {
                    waitUntil {
                        script {
                            try {
                                def response = httpRequest 'http://0.0.0.0:13000'
                                return (response.status == 200)
                            }
                            catch (exception) {
                                return false
                            }
                        }
                    }
                }
            }
        }
        // stage('Unit test') {
        //     steps {
        //         sh '/usr/local/bin/docker-compose -f docker-compose-jenkins.yml exec -T --user "$(id -u):$(id -g)" web_alexrogna_jenkins bundle exec rspec spec/models'
        //     }   
        // } 
        // stage('End-to-end test') {
        //     steps {
        //         sh '/usr/local/bin/docker-compose -f docker-compose-jenkins.yml exec -T web_alexrogna_jenkins bundle exec rspec spec/system'
        //     }   
        // } 
        stage('Stop old containers') {
            steps {
                sh '/usr/local/bin/docker-compose stop'
            }
        }
    }
}