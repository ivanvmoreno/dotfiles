#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

app_name="$1"

osascript <<EOF
tell application "System Events"
  if not (exists process "$app_name") then
    error "Application '$app_name' is not running."
  end if
  tell process "$app_name"
    if not (exists front window) then
      error "No front window found for application '$app_name'."
    end if
    set winSize to size of front window
    set winWidth to item 1 of winSize
    set winHeight to item 2 of winSize
  end tell
end tell
return winWidth & "," & winHeight
EOF