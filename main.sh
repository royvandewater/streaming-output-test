#!/usr/bin/env bash

main(){
  for i in {0..60}; do
    echo "$i"
    sleep 1
  done
}
main "$@"
