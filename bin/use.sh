#!/bin/bash

function use() {
	FabricVersion=$1
	if [ "$CurrentFV" == "" ]; then
		export CurrentFV=$FabricVersion
		export PATH=$PATH:$HOME/.fvm/$CurrentFV/bin
	else
		export PATH=$(echo $PATH | sed "s/${CurrentFV}/${FabricVersion}/bin")
		export CurrentFV=$FabricVersion
	fi
}
