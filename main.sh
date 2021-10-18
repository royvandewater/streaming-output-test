#!/usr/bin/env bash

set -e -o pipefail

get_mem_available() {
	cat /proc/meminfo \
	| grep MemTotal \
	| awk '{print $2}'
}

main(){
	local mem_available
	mem_available="$(get_mem_available)"
	return $(($mem_available > 6291456))
}
main "$@"
