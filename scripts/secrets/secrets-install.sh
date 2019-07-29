#!/bin/bash


context=$1
namespace=$2

postgreSqlPassword=$3



echo "context: ${context}"
echo "namespace: ${namespace}"
echo "postgresqlPassword: ${postgreSqlPassword}"


if [[ ("${postgreSqlPassword}"!="") ]]
then
    postgresqlPasswordEncoded=`echo -n "${postgreSqlPassword}" | base64`
else
    postgresqlPasswordEncoded=""
fi

echo "postgresqlPasswordEncoded: ${postgresqlPasswordEncoded}"

cat ./secrets.yml | \
sed "s/\X_POSTGRESQL_PASSWORD_X/${postgresqlPasswordEncoded}/" | \
kubectl --context=${context} --namespace ${namespace} apply -f -


kubectl --context=${context} --namespace ${namespace} create secret generic realm-secret --from-file=realm-config/jhipster-realm.json --from-file=realm-config/jhipster-users-0.json

#./secrets-install.sh minikube jx-local password-here

