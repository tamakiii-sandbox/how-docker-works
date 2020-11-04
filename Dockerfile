FROM debian:10.5

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      man \
      manpages \
      manpages-dev \
      less \
      strace \
      psmisc \
      make \
      && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
