#!/bin/bash -eux
export $(cat .env | xargs)

rm -rf include
curl -Ls "https://github.com/apache/pulsar-client-cpp/archive/refs/tags/v$PULSAR_CPP_VERSION.tar.gz" | tar -zxvf - "pulsar-client-cpp-$PULSAR_CPP_VERSION/include"
mv "pulsar-client-cpp-$PULSAR_CPP_VERSION/include" .
rm -rf "pulsar-client-cpp-$PULSAR_CPP_VERSION"
