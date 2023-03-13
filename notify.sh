#!/bin/sh
# /etc/profile.d/notify.sh

sender="hostname@commure.com"
recepient="security@commure.com"
subject="Privileged Account logon used"
message="`env`"
    echo "$message" | mail -s "$subject" -r "$sender" -Smtp=mail.commure.com "$recepient"