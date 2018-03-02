#!/bin/bash

function download() {
	if [ ! -d "${HOME}/.fvm/${VERSION}" ]; then
		mkdir -p ~/.fvm/$VERSION
		echo "mkdir -p $HOME/.fvm/$VERSION"
		curl https://nexus.hyperledger.org/content/repositories/releases/org/hyperledger/fabric/hyperledger-fabric/${ARCH}-${VERSION}/hyperledger-fabric-${ARCH}-${VERSION}.tar.gz | tar xz -C "$HOME/.fvm/${VERSION}"
	else
		echo "${HOME}/.fvm/${VERSION} exist"
	fi
}
