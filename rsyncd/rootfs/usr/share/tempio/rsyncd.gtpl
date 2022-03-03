port = 873
lock file = /var/run/rsync.lock
log file = /var/log/rsyncd.log
pid file = /var/run/rsyncd.pid
max connections = 50
socket options = SO_KEEPALIVE

[backups]
    comment = Home Assistant Backups
    path = /backup
    uid = root
    gid = root
    use chroot = yes
    read only = no
    list = no
    read only = true
    secrets file = /etc/rsyncd.secrets
    hosts allow = {{ .hosts_allow }}
