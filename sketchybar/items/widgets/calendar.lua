local constants = require("constants")

local calendar = sbar.add("item", constants.items.CALENDAR, {
  position = "right",
  update_freq = 1,
  icon = { string= "", padding_left = 0, padding_right = 0 }
})

calendar:subscribe({ "forced", "routine", "system_woke" }, function(env)
  calendar:set({
    label = os.date("%d/%m, %H:%M"),
  })
end)

calendar:subscribe("mouse.clicked", function(env)
  sbar.exec("open -a 'Calendar'")
end)
