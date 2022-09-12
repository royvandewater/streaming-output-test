#!/usr/bin/env bash

set -e -o pipefail

get_mem_total() {
	cat /sys/fs/cgroup/memory/memory.limit_in_bytes
}

main(){
	local mem_total

  for i in $(seq 0 10); do
    echo "$i"
    sleep 1
  done

  exit 1
}
main "$@"
