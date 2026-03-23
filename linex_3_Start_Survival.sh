#!/usr/bin/env bash
set -e

echo "Eternal SMP - SURVIVAL SERVER"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR/Survival"
java -Xmx4G -Xms4G -jar paper-1.21.11-127.jar --nogui
read -rp "Press Enter to continue..." _
