#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "$CURRENT_DIR/helpers.sh"

# CREDIT: http://arstechnica.com/civis/viewtopic.php?f=19&t=35031
print_uptime() {
  uptime \
    | awk -F, '{print $1,$2}' \
    | sed 's/:/h /g;s/^.*up *//; s/ *[0-9]* user.*//;s/[0-9]$/&m/;s/ day. */d /g'
}

main() {
  print_uptime
}

main
