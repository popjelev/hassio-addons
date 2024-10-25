#!/usr/bin/with-contenv bashio

# ==============================================================================
# Prepare rsyncd.conf before running
# ==============================================================================
jq "." /data/options.json \
    | tempio \
      -template /rsyncd.gtpl \
      -out /etc/rsyncd.conf

chmod 0600 /etc/rsyncd.conf

# ==============================================================================
# Start rsyncd service
# ==============================================================================
exec rsync \
    --verbose \
    --daemon \
    --no-detach \
    --config=/etc/rsyncd.conf
