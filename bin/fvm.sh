#!/bin/bash
# current version of fabric released

# current version of fabric-ca released
#export CA_VERSION=${2:-$VERSION}
export ARCH=$(echo "$(uname -s | tr '[:upper:]' '[:lower:]' | sed 's/mingw64_nt.*/windows/')-$(uname -m | sed 's/x86_64/amd64/g')" | awk '{print tolower($0)}')
#Set MARCH variable i.e ppc64le,s390x,x86_64,i386
export MARCH=$(uname -m)
export Func="list"
export Version="1.0.0"

function fvm() {
	Func=$1
	Version=$2
	if [ "$Func" == "use" ]; then
		. $HOME/.fvm/bin/use.sh $Version
		use $Version
	elif [ "$Func" == "list" ]; then
		. $HOME/.fvm/bin/list.sh
		list
	elif [ "$Func" == "download" ]; then
		. $HOME/.fvm/bin/download.sh
		download $Version
	else
		printHelp
	fi
}

function printHelp() {
	echo "fvm [ <function> ] [ -v <fabric version> ]"
	echo "-h | --help (print this message)"
	echo " <fucntion> set function to invoke (can be one of [list,use,download])"
	echo " <fabric version> set the version of fabric tools to use,list,download"
}
