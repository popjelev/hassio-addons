#!/usr/bin/with-contenv bashio
# ==============================================================================
# Prepare rsyncd service for running
# ==============================================================================
declare secrets

secrets=$(bashio::config 'secrets')

# Generate configuration
jq "." /data/options.json \
    | tempio \
      -template /usr/share/tempio/rsyncd.gtpl \
      -out /etc/rsyncd.conf

# Generating files
echo $secrets > /etc/rsyncd.secrets

chmod 0600 /etc/rsyncd.conf
chmod 0600 /etc/rsyncd.secrets
