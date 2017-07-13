node('master') {
 sh "pwd; ls -laR .."
}

return

@Library('libpipelines@feature/JkFromBranch') _

hose {
    EMAIL = 'cd'
    BUILDTOOLVERSION = '3.5.0'

    DEV = { config ->
        echo 'THIS IS MASTER'
    }     
}
