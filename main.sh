#!/usr/bin/env bash

main(){
	return "$(($RANDOM % 2))"
}
main "$@"
