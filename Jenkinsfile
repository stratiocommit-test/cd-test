@Library('libpipelines@master') _

hose {
    EMAIL = 'cd'
    BUILDTOOLVERSION = '3.5.0'
    NEW_VERSIONING = 'true'
    AGENT = 'ubuntu-base-ssh-1604'
    ANCHORE_TEST = true
    DEPLOYONPRS = true

    ITSERVICES = [
        ['ZOOKEEPER': [
            'image': 'jplock/zookeeper:3.5.2-alpha',
            'env': [
                  'zk_id=1'],
            'sleep': 30]]]
    
    DEV = { config ->
        echo 'THIS IS MASTER'
        doCompile(config)
        doUT(config)
        doPackage(conf: config, thirdparty: true)
	parallel(DEPLOY: {doDeploy(conf: config, thirdparty: true)},
		DOCKER: {doDocker(conf: config)},
		failFast: config.FAILFAST)
	//doDockers(conf:config, dockerImages:[[conf:config, dockerfile: "Dockerfile", image: "cd-test"], [conf:config, dockerfile:"Dockerfile.test2", image: "cd-test2"]])
    }     
}
