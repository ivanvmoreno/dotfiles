#!/bin/bash

# List of workspaces
workspaces=(
  reading
  communication
  beeper
  music
  ai
  home
  tracking
)

for ws in "${workspaces[@]}"; do
  aerospace-layout-manager -l "$ws"
done
