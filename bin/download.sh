#!/bin/bash

function download() {
	Version=$1
	if [ ! -d "${HOME}/.fvm/versions/${Version}" ]; then
		mkdir -p ~/.fvm/versions/$Version
		echo "mkdir -p $HOME/.fvm/versions/$Version"
		curl https://nexus.hyperledger.org/content/repositories/releases/org/hyperledger/fabric/hyperledger-fabric/${ARCH}-${Version}/hyperledger-fabric-${ARCH}-${Version}.tar.gz | tar xz -C "$HOME/.fvm/versions/${Version}"
	else
		echo "version ${HOME}/.fvm/versions/${Version} exist"
	fi
}
