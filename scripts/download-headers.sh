#!/bin/bash -eux
export $(cat .env | xargs)

rm -rf include
curl -Ls "https://archive.apache.org/dist/pulsar/pulsar-$PULSAR_VERSION/apache-pulsar-$PULSAR_VERSION-src.tar.gz" | tar -zxvf - "apache-pulsar-$PULSAR_VERSION-src/pulsar-client-cpp/include"
mv "apache-pulsar-$PULSAR_VERSION-src/pulsar-client-cpp/include" .
rm -rf "apache-pulsar-$PULSAR_VERSION-src"
