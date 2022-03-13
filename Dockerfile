# Get ubuntu image
FROM ubuntu:20.04

RUN apt-get update -y && apt-get install -y \
  libsodium-dev \
  && rm -rf /var/lib/apt/lists/*

# Copy mkp224o to container
COPY mkp224o /usr/local/bin/mkp224o

# Copy entrypoint to container
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
