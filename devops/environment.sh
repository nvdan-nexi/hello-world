#!/bin/bash

export DOCKERFILE=devops/android.dockerfile
export BUILD_FROM=local
export LOCAL_PATH=.
export REMOTE_URL=git@github.com:nvdan-nexi/hello-world.git
export BRANCH=develop
export id_rsa=devops/ssh/id_rsa
export id_rsa_pub=devops/ssh/id_rsa.pub