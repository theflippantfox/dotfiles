local apps = {
	browser = "firefox",
	launcher = "rofi -show-icons -theme ~/.config/rofi/launchers/type-2/style-2.rasi -show drun",
	power_menu = "",
}

local user = {
	terminal = "kitty",
	editor = "nvim",
	modkey = "Mod1",
}

local theme = {
	name = "dark",
	wallpaper = "~/wallpapers/gruvbox/a_city_skyline_at_night.jpg",
}

local config = {
	user = user,
	apps = apps,
	theme = theme,
}

return config
