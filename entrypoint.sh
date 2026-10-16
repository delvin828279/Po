#!/bin/sh
set -e

PORT="${PORT:-8080}"
FIRST_PEER=$(head -n 1 /app/peers.txt)

echo "============================================="
echo "   Rotating Gost Proxy Pool Server (107 IPs) "
echo "   Listening: wss://man:man@0.0.0.0:${PORT}   "
echo "   Upstream: 107 Rotating PrivateVPN Proxies "
echo "============================================="

exec gost -L="wss://man:man@:${PORT}" -F="${FIRST_PEER}?peer=/app/peers.txt&strategy=random"
