FROM alpine:latest

RUN apk update
RUN apk add socat tailscale

CMD tailscaled --statedir=/var/lib/tailscale --tun=userspace-networking --port=${TS_PORT:-41643} & socat TCP-LISTEN:${SOCAT_LISTEN_PORT:-80},fork TCP:$SOCAT_DEST_HOST:$SOCAT_DEST_PORT
