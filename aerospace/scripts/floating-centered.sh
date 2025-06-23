#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

# shellcheck source=./display-info.sh
source "/Users/ivan/.config/aerospace/scripts/display-info.sh"

# new dimensions and position of the focused window
calc() { printf %.2f "$(echo "$1" | bc -l)"; }

front_app_name=$(sh /Users/ivan/.config/aerospace/scripts/get-front-app-name.sh | tail -n1)
window_size=$(sh /Users/ivan/.config/aerospace/scripts/get-window-size.sh "$front_app_name" | tail -n1)
width=$(echo "$window_size" | cut -d ',' -f 1)
height=$(echo "$window_size" | cut -d ',' -f 4)

new_x=$(calc "($screen_width - $width) / 2")
new_y=$(calc "($screen_height - $height) / 2")

# resize/reposition the focused window
osascript -e "
tell application \"System Events\"
  set _app to name of first application process whose frontmost is true
  tell process _app
    set _window to front window
    set position of _window to {$new_x, $new_y}
    set size of _window to {$width, $height}
    activate
  end tell
end tell" && aerospace flatten-workspace-tree
