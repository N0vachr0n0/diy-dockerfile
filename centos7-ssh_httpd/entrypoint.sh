#!/bin/sh
ssh-keygen -A
httpd
exec /usr/sbin/sshd -D -e "$@" 

