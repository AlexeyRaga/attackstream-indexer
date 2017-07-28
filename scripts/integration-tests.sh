#!/bin/bash

export DOCKER_IP=`ifconfig | grep "inet addr:" | grep "Bcast:0.0.0.0" | cut -d: -f2 | awk '{ print $1}'`

stack clean
stack test
