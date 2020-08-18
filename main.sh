#!/usr/bin/env bash


# Runs for 11 minutes

main(){
  for i in {0..660}; do
    echo "$i"
    sleep 1
  done
}
main "$@"
