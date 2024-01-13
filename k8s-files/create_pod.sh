#!/bin/sh

token=$(cat /var/run/secrets/kubernetes.io/serviceaccount/token)

ca_crt="/var/run/secrets/kubernetes.io/serviceaccount/ca.crt"

#curl -v --cacert $ca_crt -H "Authorization: Bearer $token" https://$KUBERNETES_SERVICE_HOST:$KUBERNETES_SERVICE_PORT_HTTPS/api/v1/namespaces/ben-app/pods/$HOSTNAME

curl -k -v -X POST -H "Authorization: Bearer $token" \
-H "Content-Type: application/json" \
-d@echo-pod.json \
https://$KUBERNETES_SERVICE_HOST:$KUBERNETES_SERVICE_PORT_HTTPS/api/v1/namespaces/ben-app/pods

