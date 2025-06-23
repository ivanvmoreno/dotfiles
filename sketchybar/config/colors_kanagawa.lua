-- Kanagawa Colors

return {
	black = 0xff1F1F28,
	white = 0xffDCD7BA,
	red = 0xffC34043,
	green = 0xff76946A,
	blue = 0xff7E9CD8,
	yellow = 0xffC0A36E,
	orange = 0xffFFA066,
	pink = 0xffD27E99,
	purple = 0xff957FB8,
	other_purple = 0xff938AA9,
	cyan = 0xff7FB4CA,
	grey = 0xff727169,
	dirty_white = 0xffC8C093,
	dark_grey = 0xff2A2A37,
	transparent = 0x00000000,
	bar = {
		bg = 0xff2A2A37,
		border = 0xff16161D,
		active = 0xffFFA066,
	},
	popup = {
		bg = 0xd31F1F28,
		border = 0xd316161D,
	},
	slider = {
		active = 0xff7E9CD8,
		inactive = 0xff727169,
	},
	bg1 = 0xff2A2A37,

	with_alpha = function(color, alpha)
		if alpha > 1.0 or alpha < 0.0 then return color end
		return (color & 0x00ffffff) | (math.floor(alpha * 255.0) << 24)
	end,
}