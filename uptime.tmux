#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "$CURRENT_DIR/scripts/helpers.sh"

uptime_time_interpolation="\#{uptime_time}"
uptime_label_interpolation="\#{uptime_label}"
uptime_short_label_interpolation="\#{uptime_short_label}"

uptime_short_label() {
  uptime_label | sed -e 's/\([mdh]\).*/\1/'
}

uptime_label() {
  uptime | awk '{print $4}'|sed 's/,//'
}

uptime_digit() {
  uptime | awk '{print $3}'
}

do_interpolation() {
  local output="$1"
  local output="${output/$uptime_time_interpolation/$(uptime_digit)}"
  local output="${output/$uptime_label_interpolation/$(uptime_label)}"
  local output="${output/$uptime_short_label_interpolation/$(uptime_short_label)}"
  printf "%s" "$output"
}

update_tmux_uptime() {
  local option="$1"
  local option_value="$(get_tmux_option "$option")"
  local new_option_value="$(do_interpolation "$option_value")"
  set_tmux_option "$option" "$new_option_value"
}

main() {
  update_tmux_uptime "status-right"
  update_tmux_uptime "status-left"
}
main

