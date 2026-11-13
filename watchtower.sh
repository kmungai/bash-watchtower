#!/bin/bash

# Checking whether a service is installed - nginx

if [ "$(dpkg-query -W -f='${db:Status-Status}\n' nginx)" != "installed" ]; then  # Check whether nginx pkg is installed
	echo "WARNING: Nginx is not installed"
	exit 1
fi

system_log="nginx" # assign nginx to a variable
system_path=/usr/bin/systemctl # assign systemctl path to a variable


# Check whether systemctl exists and is executable
if [ ! -x "$system_path" ]; then
	echo "WARNING! systemctl is missing or not executable"
	exit 2
fi

#check whether nginx is active 
if "$system_path" is-active --quiet "$system_log"; then
	echo "$system_log is in a healthy status"
else
	echo "WARNING! $system_log is NOT active"
	exit 3
fi
