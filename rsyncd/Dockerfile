ARG BUILD_FROM
FROM $BUILD_FROM

# Install requirements for add-on
RUN apk add --no-cache rsync

# Copy data
COPY rootfs /

RUN chmod +x \
  /etc/cont-init.d/rsyncd.sh \
  /etc/services.d/rsyncd/finish \
  /etc/services.d/rsyncd/run
