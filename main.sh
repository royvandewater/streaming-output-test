#!/usr/bin/env bash

main(){
  local exit_code

  exit_code=$(($RANDOM % 2))
  echo "exiting with exit_code: $exit_code"
  exit $exit_code
}
main "$@"
