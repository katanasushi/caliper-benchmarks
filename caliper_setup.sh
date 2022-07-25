#!/bin/bash
set -x

install_and_bind () {
	npm init -y
	npm install --save @hyperledger/caliper-cli@0.4.0
	sed -i "s/this.checkConfig(ethereumConfig);/\/\/this.checkConfig(ethereumConfig);/g" node_modules/@hyperledger/caliper-ethereum/lib/ethereum-connector.js
	npx caliper bind --caliper-bind-sut ethereum:1.2.1
}

install_and_bind

exit 0
