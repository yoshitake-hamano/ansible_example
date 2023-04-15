#!/bin/bash

cat <<EOF
----------------------------------------
  server1
----------------------------------------

EOF
(cd server1; ansible-playbook -i ../hosts main.yml -e main_foo=foo)
