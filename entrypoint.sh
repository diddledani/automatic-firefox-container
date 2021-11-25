#!/bin/bash

if [ -z "$DISPLAY" ]; then
    exec echo 'docker run --rm -e DISPLAY="${DISPLAY}" -v /tmp/.X11-unix:/tmp/.X11-unix:rw -v "$HOME/.Xauthority":/root/.Xauthority:rw -v "${XDG_RUNTIME_DIR}/pulse/native":/run/user/0/pulse/native:rw --net=host "$(docker inspect '$HOSTNAME' -f "{{.Config.Image}}")" '"$@"
fi

exec "$@"
