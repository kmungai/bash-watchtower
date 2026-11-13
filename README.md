# Bash Watchtower

## Overview
A Bash script that monitors the health of the Nginx service by checking whether it is installed and active.

## Features
- Checks whether the Nginx package is installed using `dpkg-query`.
- Verifies that `systemctl` exists and is executable.
- Checks whether Nginx is active.
- Uses distinct exit codes to identify failures.

## Requirements
- Ubuntu/Debian Linux
- Bash
- `dpkg-query`
- systemd (`systemctl`)

## Usage
```bash
chmod +x watchtower.sh
./watchtower.sh
```

## Exit Codes
 Code | Meaning 
0 | Nginx is active 
1 | Nginx is not installed 
2 | systemctl is unavailabe
3 | Nginx is not active

## Learning Objectives
Practice Bash conditionals, command substitution, variables, exit statuses, and service monitoring.
