# Notification when someone loggs in your system, you could try to put a little script in a /etc/profile.d script.
# /etc/profile.d/notify_log.sh
## Ref URL https://manpages.ubuntu.com/manpages/kinetic/en/man1/notify-send.1.html


notify-send -t 3000 "User logged in" `whoami`
