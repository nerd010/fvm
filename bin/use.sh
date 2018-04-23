#!/bin/bash

function use() {
	FabricVersion=$1
	if [ "$CurrentFV" == "" ]; then
		export CurrentFV=$FabricVersion
		export PATH=$PATH:$HOME/.fvm/versions/$CurrentFV/bin
	else
		if [ "$CurrentFV" == "$FabricVersion" ]; then
			echo "please set FABRIC_CFG_PATH"
			return
		fi
		export PATH=$(echo $PATH | sed "s/${CurrentFV}/${FabricVersion}/bin")
		export CurrentFV=$FabricVersion
	fi
	echo "please set FABRIC_CFG_PATH"
}
