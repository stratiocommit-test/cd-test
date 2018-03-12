@Library('libpipelines@preproduction') _

hose {
    EMAIL = 'cd'
    BUILDTOOLVERSION = '3.5.0'
    NEW_VERSIONING = 'true'

    DEV = { config ->
        echo 'THIS IS MASTER'
        doCompile(config)
        doPackage(config)
    }     
}
