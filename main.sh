#!/usr/bin/env bash

set -e -o pipefail

get_mem_total() {
	cat /proc/meminfo \
	| grep MemTotal \
	| awk '{print $2}'
}

main(){
	local mem_total
	mem_total="$(get_mem_total)"
        echo "mem_total=$mem_total"
	return "$(($mem_total > 62914560))" # More than 6GB
}
main "$@"
