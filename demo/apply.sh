#!/usr/bin/env bash

. $(dirname ${BASH_SOURCE})/../util.sh
# now we need to apply the CRDs

desc "now to apply the crds"
run "cat ../artifacts/examples/crd.yaml"

run "kubectl create -f ../artifacts/examples/crd.yaml"

# create a custom resource of type Foo
run "cat ../artifacts/examples/example-foo.yaml"
run "kubectl create -f ../artifacts/examples/example-foo.yaml"

# check deployments created through the custom resource
run "kubectl get deployments"
