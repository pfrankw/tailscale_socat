# tailscale_socat
Using tailscale in userspace mode as a reverse proxy for containers. This way one can use it to expose an internal container to its vpn without much network configuration.

## How
It basically runs tailscaled in userspace mode and socat acts as a reverse proxy to another container by opening a port on this tailscale container, so that when tailscale receives a connection attempt and tries to contact localhost:PORT, this connection gets forwarded to the container thanks to socat.
