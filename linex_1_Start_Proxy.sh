#!/usr/bin/env bash
set -e

echo "Eternal SMP - VELOCITY PROXY"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR/Proxy"
java -Xmx1G -Xms1G -jar velocity-3.5.0-SNAPSHOT-584.jar
read -rp "Press Enter to continue..." _
