#!/bin/bash

# You can either source this file if you run bash as your shell or you
# can call the "oneups" command.  This file needs to be in the top
# level directory oneup directory.

oneup () {
    local top="$(readlink -f $(dirname $BASH_SOURCE))"
    ansible-playbook --extra-vars "top=$top" "$@"
}


