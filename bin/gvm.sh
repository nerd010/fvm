#!/bin/bash
# current version of fabric released
export VERSION=${1:-1.0.6}
# current version of fabric-ca released
export CA_VERSION=${2:-$VERSION}
export ARCH=$(echo "$(uname -s | tr '[:upper:]' '[:lower:]' | sed 's/mingw64_nt.*/windows/')-$(uname -m | sed 's/x86_64/amd64/g')" | awk '{print tolower($0)}')
#Set MARCH variable i.e ppc64le,s390x,x86_64,i386
export MARCH=$(uname -m)
export Func="list"
export Version="1.0.0"

function fvm() {
	Func=$1
	Version=$2
	if [ "$Func" == "use" ]; then
		. $HOME/.fvm/bin/use.sh
		use $Version
	elif [ "$Func" == "list" ]; then
		. $HOME/.fvm/bin/list.sh
		list
	elif [ "$Func" == "download" ]; then
		. $HOME/.fvm/bin/download.sh
		download $Version
	fi
}

function printHelp() {
	echo "$0 [-f <function> ] [ -v <fabric version> ]"
	echo "$0 -h | --help (print this message)"
	echo "-f <fucntion> set function to invoke (can be one of [list,use,download])"
	echo "-v <fabric version> set the version of fabric tools to use,list,download"
}

while getopts "h?:f:v:"; do
	case "$opt" in
	h | \?)
		printHelp
		exit 0
		;;
	f) Function=$OPTARG
		;;
	v) Version=$OPTARG
		;;
	esac
done

fvm $Function $Version
