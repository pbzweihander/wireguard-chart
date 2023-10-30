#!/usr/bin/env sh
kubectl --namespace $RELEASE_NAMESPACE create secret generic $SECRET_NAME --from-literal=privatekey=$(wg genkey) --dry-run=client -o yaml | kubectl apply -f -
