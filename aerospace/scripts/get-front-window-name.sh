#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

osascript <<'EOF'
try
  tell application "System Events"
    set frontApp to name of first application process whose frontmost is true
    tell process frontApp
      if (count of windows) = 0 then
        return "No window"
      end if
      set win to front window
      try
        set winTitle to name of win
        if winTitle is missing value or winTitle is "" then
          return "Untitled or inaccessible"
        else
          return winTitle
        end if
      on error
        return "Window title not accessible"
      end try
    end tell
  end tell
on error errMsg
  return "Error: " & errMsg
end try
EOF