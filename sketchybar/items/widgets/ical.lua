-- Toggle popup drawing for the calendar item
local POPUP_CLICK_SCRIPT = "sketchybar --set ical popup.drawing=toggle"
local PLUGIN_DIR = "~/.config/sketchybar/plugins"

-- Main calendar item
local ical = sbar.add("item", "ical", {
  position = "right",
  update_freq = 180,
  icon = {
    string = "􀉉",
    color = 0xffDCD7BA,
  },
  label = {
    color = 0xffDCD7BA,
  },
  popup = {
    align = "right",
  },
  script = PLUGIN_DIR .. "/ical.sh",
  click_script = POPUP_CLICK_SCRIPT,
})

-- Subscribe to events for opening/closing the popup
ical:subscribe({
  "mouse.clicked",
  "mouse.entered", 
  "mouse.exited",
  "mouse.exited.global",
})

-- Popup template for the calendar details
local ical_template = sbar.add("item", "ical.template", {
  position = "popup.ical",
  drawing = false,
  background = {
    corner_radius = 12,
  },
  padding_left = 7,
  padding_right = 7,
  icon = {
    background = {
      height = 2,
      y_offset = -12,
    },
  },
})

return {
  ical = ical,
  ical_template = ical_template,
}
