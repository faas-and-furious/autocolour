FROM alpine:3.10
WORKDIR /root/

# Use any image as your base image, or "scratch"
# Add fwatchdog binary via https://github.com/openfaas/faas/releases/
# Then set fprocess to the process you want to invoke per request - i.e. "cat" or "my_binary"

RUN apk add --no-cache curl bash imagemagick vim

RUN curl -sL https://github.com/openfaas/faas/releases/download/0.15.2/fwatchdog > /usr/bin/fwatchdog \
    && chmod +x /usr/bin/fwatchdog

# Populate example here - i.e. "cat", "sha512sum" or "node index.js"
ENV fprocess="convert - -separate -normalize -combine fd:1"

HEALTHCHECK --interval=5s CMD [ -e /tmp/.lock ] || exit 1
CMD ["fwatchdog"]
