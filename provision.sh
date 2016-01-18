#!/bin/sh
# variables
HOST_USER_NAME="ec2-user"
PRIVATE_KEY_PATH="~/.ssh/id_rsa"
FILE="django-devel.yml"

# command
ansible-playbook ${FILE} -i hosts -u ${HOST_USER_NAME} --private-key=${PRIVATE_KEY_PATH}
