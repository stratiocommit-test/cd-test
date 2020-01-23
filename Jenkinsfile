@Library('libpipelines@snapshotBuilds') _

hose {
    EMAIL = 'cd'
    BUILDTOOLVERSION = '3.5.0'
    NEW_VERSIONING = 'true'
    AGENT = 'ubuntu-base-ssh-1604'
    ANCHORE_TEST = false
    DEPLOYONPRS = false
    GENERATE_QA_ISSUE = false
    SKIP_SNAPSHOT_CHECK = false

    ITSERVICES = [
        ['ZOOKEEPER': [
            'image': 'jplock/zookeeper:3.5.2-alpha',
            'env': [
                  'zk_id=1'],
            'sleep': 5]]]

	ATSERVICES = [
		['ZOOKEEPER': [
			'image': 'jplock/zookeeper:3.5.2-alpha',
			'env': [
				'zk_id=1',
				'USER=\$REMOTE_USER'],
			'sleep': 5]]]

    DEV = { config ->
        echo 'THIS IS MASTER'
        node(config.AGENT) {
           withCredentials([sshUserPrivateKey(credentialsId: 'BERILIO_KEY', keyFileVariable: 'KEY', passphraseVariable: '', usernameVariable: 'USER')]) {
              def test1 = this.env.KEY
              def test2 = this.env.USER
              echo test2
           }
         }
        doCompile(config)
        parallel(UT: {doUT(config)},
            IT: {doIT(config)},
            failFast: config.FAILFAST)
        doPackage(config)
	parallel(DEPLOY: {doDeploy(conf: config)},
		DOCKER: {doDocker(conf: config)},
		failFast: config.FAILFAST)
    }
}
