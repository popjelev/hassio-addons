ARG BUILD_FROM
FROM $BUILD_FROM

# Install requirements for add-on
RUN apk add --no-cache rsync

# Copy data for add-on
COPY run.sh /
COPY rsyncd.gtpl /

RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
