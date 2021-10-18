#!/usr/bin/env bash

set -e -o pipefail

get_mem_total() {
	/sys/fs/cgroup/memory/memory.limit_in_bytes
}

main(){
	local mem_total
	mem_total="$(get_mem_total)"
        echo "mem_total=$mem_total"
	return "$(($mem_total > 6442450944))" # More than 6GB
}
main "$@"
