@Library('libpipelines@preproduction') _

hose {
    EMAIL = 'cd'
    BUILDTOOLVERSION = '3.5.0'
    NEW_VERSIONING = 'true'
    ANCHORE_TEST = false

    ITSERVICES = [
        ['ZOOKEEPER': [
            'image': 'jplock/zookeeper:3.5.2-alpha',
            'env': [
                  'zk_id=1'],
            'sleep': 30]]]
    
    DEV = { config ->
        echo 'THIS IS MASTER AGAIN'
        doCompile(config)
        doUT(config)
        //doIT(config)
        doPackage(config)
        //doStaticAnalysis(config)
        doDeploy(config)
        doDocker(conf:config, buildargs:['TESTARG=test'])
    }     
}
