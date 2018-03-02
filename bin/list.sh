#!/bin/bash

function list() {
	mkdir -p ${HOME}/.fvm/versions
	for i in $(ls -A ${HOME}/.fvm/versions/); do
		echo "${i}"
	done
	return
}
