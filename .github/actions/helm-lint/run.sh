#!/bin/bash
helm1=$(helm lint bitnami/apache | tail -1)

if [ -z "$helm1" ]; then
    echo "::set-output name=output1::failed"
    exit 1
else
    echo "::set-output name=output1::$helm1"
fi

helm2=$(helm lint bitnami/consul | tail -1)

if [ -z "$helm2" ]; then
    echo "::set-output name=output2::failed"
    exit 1
else
    echo "::set-output name=output2::$helm2"
fi
