FROM busybox

ENV LOWERDIR
ENV MERGED

VOLUME /lowerdir
VOLUME /upperdir
VOLUME /merged

RUN mkdir /tmp/workdir

CMD 'mount -t overlay overlay -o lowerdir=/lowerdir,upperdir=/upperdir,workdir=/tmp/workdir /merged'
