#!/usr/bin/env bash

set -e

ROOTDIR="$(cd $(dirname $0); pwd)"
HOSTS="$ROOTDIR/hosts"
PLAYBOOK="$ROOTDIR/local.yml"

if ! command -v ansible > /dev/null; then
	echo "ansible is not installed"
	exit 1
fi

ansible-playbook -i $HOSTS $PLAYBOOK --ask-become-pass $*
