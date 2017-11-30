FROM busybox

VOLUME /lowerdir /upperdir /merged

RUN mkdir /tmp/workdir

ENTRYPOINT ["/bin/sh", "-c"]
CMD ["mount -t overlay overlay -o lowerdir=/lowerdir,upperdir=/upperdir,workdir=/tmp/workdir /merged"]
