#!/bin/bash

function list() {
	for i in $(ls -A ${HOME}/.fvm/); do
		echo "${i}"
	done
	return
}
