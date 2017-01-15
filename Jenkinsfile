#!groovy

node {


    currentBuild.result = "SUCCESS"

    try {

       stage 'Checkout'

            checkout scm

       stage 'Test'

            env.NODE_ENV = "test"

            print "Environment will be : ${env.NODE_ENV}"

            sh 'make show'

       stage 'Build Docker'

            sh './dockerBuild.sh'

       stage 'Deploy'

            echo 'Push to Repo'
            sh './dockerPushToRepo.sh'

            echo 'ssh to web server and tell it to pull new image'
            sh 'ssh coopadmin@192.168.133.88 /usr/local/bin/dockerRun.sh'

       stage 'Cleanup'

            echo 'prune and cleanup'
            sh 'make clean'

        }


    catch (err) {

        currentBuild.result = "FAILURE"


        throw err
    }

}
