#!/usr/bin/env bash

# EUID only works in bash
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root"
   exit 1
fi

SOURCE_DIR=$PWD
. $(dirname ${BASH_SOURCE})/../util.sh

# tmux new-session -s my_sess
# tmux split-window -v -d -c $SOURCE_DIR
# tmux send-keys -t bottom C-z './apply.sh' Enter

# build the controller

run "go build -o sample-controller ../."

run "./sample-controller -kubeconfig=$HOME/.kube/config"

# split terminal
# tmux new-session -d -s foo 'blah food'


