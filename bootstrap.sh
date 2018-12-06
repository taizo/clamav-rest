#!/bin/bash
set -m

clamd_host=${CLAMD_HOST:-127.0.0.1}
clamd_port=${CLAMD_PORT:-3310}
server_port=${SERVER_PORT:-8765}

echo "using clamd server: $host:$port"

# start in background
java -jar /var/clamav-rest/clamav-rest-1.0.2.jar --server.port=${server_port} --clamd.host=${clamd_host} --clamd.port=${clamd_port}
