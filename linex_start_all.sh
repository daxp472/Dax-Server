#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

launch_in_terminal() {
  local title="$1"
  local script_path="$2"
  local cmd="cd \"$SCRIPT_DIR\" && \"$script_path\""

  if command -v gnome-terminal >/dev/null 2>&1; then
    gnome-terminal --title="$title" -- bash -lc "$cmd"
  elif command -v x-terminal-emulator >/dev/null 2>&1; then
    x-terminal-emulator -e bash -lc "$cmd"
  elif command -v konsole >/dev/null 2>&1; then
    konsole --hold -p tabtitle="$title" -e bash -lc "$cmd"
  elif command -v xfce4-terminal >/dev/null 2>&1; then
    xfce4-terminal --title="$title" --command "bash -lc '$cmd'"
  elif command -v xterm >/dev/null 2>&1; then
    xterm -T "$title" -e bash -lc "$cmd"
  else
    echo "No supported terminal emulator found. Install one of: gnome-terminal, x-terminal-emulator, konsole, xfce4-terminal, xterm."
    exit 1
  fi
}

launch_in_terminal "Eternal SMP - VELOCITY PROXY" "$SCRIPT_DIR/linex_1_Start_Proxy.sh"
sleep 0.5
launch_in_terminal "Eternal SMP - HUB SERVER" "$SCRIPT_DIR/linex_2_Start_Hub.sh"
sleep 0.5
launch_in_terminal "Eternal SMP - SURVIVAL SERVER" "$SCRIPT_DIR/linex_3_Start_Survival.sh"
