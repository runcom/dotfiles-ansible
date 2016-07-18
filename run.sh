#!/bin/sh

if [ "$1" == "v" ]; then
	verbose="-vvv"
fi

ansible-playbook $verbose -i "localhost," -c local setup.yml
