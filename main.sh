#!/usr/bin/env bash

main(){
  for i in {0..100}; do
    echo "$i"
    sleep 1
  done
}
main "$@"
