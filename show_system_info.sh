#!/bin/bash

# Function to display OS version
show_os_version() {
    echo "OS Version:"
    if [ -f /etc/os-release ]; then
        cat /etc/os-release
    else
        echo "OS version information not found"
    fi
    echo
}

# Function to list all users with bash shell
list_bash_users() {
    echo "Users with Bash Shell:"
    grep "/bin/bash" /etc/passwd | cut -d: -f1
    echo
}

# Function to show open ports
show_open_ports() {
    echo "Open Ports:"
    sudo lsof -i -P -n | grep LISTEN
    echo
}

# Execute functions
show_os_version
list_bash_users
show_open_ports
