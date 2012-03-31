#!/bin/bash
# Author: Wonder
# Description:

PORT=7070
[ -n "$1" ] && PORT="$1"
echo ssh -v -CNgD "$PORT" root@173.212.255.54
ssh -v -CNgD "$PORT" root@173.212.255.54

##echo "Enter your password:"
##stty -echo
##read pswd
##stty echo
##
##expect <<EOF
##set timeout 30
##
##spawn ssh -v -CNgD "$PORT" root@173.212.255.54
##expect "password:"
##send "$pswd\n"
##interact
##EOF
