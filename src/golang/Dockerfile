FROM golang
MAINTAINER jrbeverly

# 
# Environment Variables
#
ENV HOME=/

# 
# Provision
#
COPY provision/install.sh /tmp/install.sh
RUN sh /tmp/install.sh && rm -f /tmp/install.sh

# 
# Options
#
WORKDIR /media
ENTRYPOINT []
CMD []

#
# User
#
ARG DUID
ARG DGID
RUN addgroup --gid ${DGID} --system docker && adduser --system --uid ${DUID} --gid ${DGID} docker

#
# Metadata Arguments
#
ARG BUILD_DATE
ARG VERSION
ARG VCS_REF

#
# Metadata
#
LABEL \
    maintainer="jrbeverly" \
    \
    org.label-schema.name="baseimage" \
    org.label-schema.summary="A super small image for use as a continuous integration base image." \
    org.label-schema.description="A super small image for use as a continuous integration base image." \
    org.label-schema.maintainer="jrbeverly" \
    org.label-schema.build-date=$BUILD_DATE \
    org.label-schema.version=$VERSION \
    org.label-schema.url="" \
    org.label-schema.license="MIT" \
    org.label-schema.vcs-type="Git" \
    org.label-schema.vcs-ref=$VCS_REF \
    org.label-schema.vcs-url="https://gitlab.com/jrbeverly-docker/docker-baseimage.git" \
    org.label-schema.docker.cmd="docker run -it -v $(pwd):/media/ jrbeverly/baseimage:alpine sh" \
    org.label-schema.vendor="jrbeverly" \
    org.label-schema.schema-version="1.0" \
    \
    io.jrbeverly.user=$DUID \
    io.jrbeverly.group=$DGID \
    io.jrbeverly.project="baseimage" \
    io.jrbeverly.summary="A super small golang image for use as a continuous integration base image." \
    io.jrbeverly.baseimage.meta.BUILD_DATE="The Date/Time the image was built." \
    io.jrbeverly.baseimage.meta.VERSION="Release identifier for the contents of the image." \
    io.jrbeverly.baseimage.meta.VCS_REF="Identifier for the version of the source code from which this image was built." \
    io.jrbeverly.baseimage.args.DUID="The [user id](http://www.linfo.org/uid.html) of the docker user." \
    io.jrbeverly.baseimage.args.DGID="The [group id](http://www.linfo.org/uid.html) of the docker user's group."