ARG BUILDER_VERSION

FROM odaceo/builder:${BUILDER_VERSION}

LABEL vendor="Odaceo" 
LABEL maintainer="Alexandre GARINO <alexandre.garino@odaceo.ch>"

ARG OPENJDK_VERSION
ENV JAVA_HOME /usr/lib/jvm/java-${OPENJDK_VERSION}-openjdk-amd64
ENV JRE_HOME /usr/lib/jvm/java-${OPENJDK_VERSION}-openjdk-amd64/jre
COPY scripts/openjdk.sh /root/
RUN set -eux; /root/openjdk.sh
