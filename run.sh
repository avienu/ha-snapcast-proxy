#!/usr/bin/env bash
TARGET_HOST="${TARGET_HOST:-10.1.10.113}"
TARGET_PORT="${TARGET_PORT:-1780}"
LOCAL_PORT=1780

echo "Starting proxy: ws://0.0.0.0:${LOCAL_PORT} -> ws://${TARGET_HOST}:${TARGET_PORT}"
exec socat TCP-LISTEN:${LOCAL_PORT},fork,reuseaddr TCP:${TARGET_HOST}:${TARGET_PORT}
