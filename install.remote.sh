#!/bin/bash -e

repositoryUrl='https://github.com/The-Running-Dev/Setup-Ubuntu.git'
cloneDir='/tmp/Setup-Ubuntu/'

git clone $repositoryUrl $cloneDir

if [ -d $cloneDir ]; then
    sudo chmod +x $cloneDir/*.sh

    $cloneDir/install.sh
fi