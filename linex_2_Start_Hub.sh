#!/usr/bin/env bash
set -e

echo "Eternal SMP - HUB SERVER"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR/Hub"
java -Xmx2G -Xms2G -jar paper-1.21.11-127.jar --nogui
read -rp "Press Enter to continue..." _
