#!/usr/bin/env bash

main(){
  for i in {0..10}; do
    echo "$i"
    sleep 1
  done
}
main "$@"
