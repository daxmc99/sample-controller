#!/usr/bin/env bash


kubectl delete -f ../artifacts/examples/example-foo.yaml

kubectl delete -f ../artifacts/examples/crd.yaml
