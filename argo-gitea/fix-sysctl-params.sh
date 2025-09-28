

# Check values
sysctl fs.inotify.max_user_watches
sysctl fs.inotify.max_user_instances

# Original values on laptop
# fs.inotify.max_user_watches = 124560
# fs.inotify.max_user_instances = 128

ls /etc/sysctl.d
update values in file like 99-sysctl.conf or create a new file


fs.inotify.max_user_watches = 524288
fs.inotify.max_user_instances = 512


sudo sysctl -p