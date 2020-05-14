#!/bin/bash

helm lint bitnami/apache | tail -1

if [ $? -eq 0 ]; then
    helm1=$(helm lint bitnami/apache | tail -1)
    echo "::set-output name=output1::$helm1"
else
    helm1=$(helm lint bitnami/apache | tail -1)
    echo "::set-output name=output1::$helm1"
    exit 1
fi

helm lint bitnami/consul | tail -1

if [ $? -eq 0 ]; then
    helm2=$(helm lint bitnami/consul | tail -1)
    echo "::set-output name=output2::$helm2"
else
    helm2=$(helm lint bitnami/consul | tail -1)
    echo "::set-output name=output2::$helm2"
    exit 1
fi
