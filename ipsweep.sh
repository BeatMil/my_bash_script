#!/bin/bash
for ip in {1..254}
do
	ping -n 1 -w 40 192.168.1.$ip | grep 'Reply' | cut -d ' ' -f 3 | tr -d ':' &
done
