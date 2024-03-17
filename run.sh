#!/bin/bash

cat <<EOF
----------------------------------------
  server1
----------------------------------------

EOF
(cd server1; ansible-playbook -i ../hosts main.yml -e main_foo=foo)

cat <<EOF
----------------------------------------
  server1 tag1
----------------------------------------

EOF
(cd server1; ansible-playbook -i ../hosts main.yml -e main_foo=foo -t tag1)

cat <<EOF
----------------------------------------
  server1 tag2
----------------------------------------

EOF
(cd server1; ansible-playbook -i ../hosts main.yml -e main_foo=foo -t tag2)
