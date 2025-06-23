#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

osascript <<'EOF'
tell application "System Events"
  set frontApp to name of first application process whose frontmost is true
end tell
return frontApp
EOF