#!/usr/bin/env bash

set -e -o pipefail

main(){
	for i in $(seq 0 600); do
		echo "$i"
		sleep 1
	done
}
main "$@"
