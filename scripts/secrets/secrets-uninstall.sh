#!/bin/bash

context=$1
namespace=$2

kubectl --context=${context} --namespace ${namespace} delete -f ./secrets.yml

kubectl --context=${context} --namespace ${namespace} delete secret realm-secret

#./secrets-uninstall.sh minikube cryptocurrency-services
#./secrets-uninstall.sh minikube jx-local
