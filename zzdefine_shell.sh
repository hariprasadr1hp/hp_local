#!/usr/bin/env bash

case "$(uname)" in
Darwin)
    if [ -x /opt/homebrew/bin/bash ]; then
        exec /opt/homebrew/bin/bash
    else
        exec /usr/bin/bash
    fi
    ;;
Linux)
    exec /bin/bash
    ;;
*)
    echo "Unsupported OS: $(uname)"
    exit 1
    ;;
esac
