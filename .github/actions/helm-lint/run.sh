#!/bin/bash

helm1=$(helm lint bitnami/apache | tail -1)
echo "::set-output name=output1::$helm1"
helm2=$(helm lint bitnami/consul | tail -1)
echo "::set-output name=output2::$helm2"