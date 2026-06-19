#!/usr/bin/env bash
set -euo pipefail

OPENAUDIBLE_CONFIG_DIR="${OPENAUDIBLE_CONFIG_DIR:-/config/OpenAudible}"
PUID="${PUID:-1000}"
PGID="${PGID:-1000}"

echo "Preparing OpenAudible config directory at ${OPENAUDIBLE_CONFIG_DIR}"
mkdir -p "${OPENAUDIBLE_CONFIG_DIR}/tmp"

if ! chown -R "${PUID}:${PGID}" "${OPENAUDIBLE_CONFIG_DIR}"; then
  echo "Warning: unable to chown ${OPENAUDIBLE_CONFIG_DIR} to ${PUID}:${PGID}"
fi

if ! chmod -R u+rwX,g+rwX "${OPENAUDIBLE_CONFIG_DIR}"; then
  echo "Warning: unable to chmod ${OPENAUDIBLE_CONFIG_DIR}"
fi

echo "Starting OpenAudible Docker container"
exec "$@"
