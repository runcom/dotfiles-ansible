#!/bin/sh

if ! command -v ansible-playbook &> /dev/null; then
	echo "please run ./reqs.sh"
	exit 1
fi

if [ "$1" == "v" ]; then
	verbose="-vvv"
fi

ansible-playbook $verbose -i "localhost," -c local setup.yml
