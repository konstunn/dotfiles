#!/bin/bash

log() {
    local message="$*"
    local timestamp file line

    timestamp="$(date '+%Y-%m-%d %H:%M:%S')"
    file="${BASH_SOURCE[1]}"
    line="${BASH_LINENO[0]}"

    echo "[$file:$line] $message"
}

# Detect docker compose command
if command -v docker compose >/dev/null 2>&1; then
    COMPOSE_CMD="docker compose"
elif docker compose-version >/dev/null 2>&1; then
    COMPOSE_CMD="docker-compose"
else
    log "Docker Compose is not installed."
    return 1 2>/dev/null || exit 1
fi

# Aliases + completion
for cmd in up down build run ps config logs exec; do
    short="dc${cmd:0:1}"   # dcu, dcd, dcb...

    # alias supports spaces in value, so this is fine
    alias "${short}=${COMPOSE_CMD} ${cmd}"
    complete -F _complete_alias "${short}"
done
