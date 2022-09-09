#!/usr/bin/env bash

set -e

if command -v ansible >/dev/null; then
	echo "ansible is already installed"
	exit
fi

sudo apt-add-repository -y ppa:ansible/ansible
sudo apt update -y
sudo apt install -y ansible
