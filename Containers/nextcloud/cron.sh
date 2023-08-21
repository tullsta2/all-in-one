#!/bin/bash
set -eu

trap 'true' SIGINT SIGTERM

exec /cronjob.sh &

wait $!

echo "Cronjob successfully exited."
