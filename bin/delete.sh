#!/bin/bash
function delete() {
	Version=$1
	rm -rf ~/.fvm/versions/$Version
}
