#!/bin/bash
    
# prepare any message you want
login_ip="$(echo $SSH_CONNECTION | cut -d " " -f 1)"
login_date="$(date +"%e %b %Y, %a %r")"
login_name="$(whoami)"
server_name="$(hostname)"
# For new line I use $'\n' here
message="💡 SSH login to server $server_name"$'\n'"🦸 $login_name"$'\n'"🌐 $login_ip"$'\n'"📅 $login_date"

#send it to telegram
telegram-send "$message"
