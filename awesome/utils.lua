local naughty = require("naughty") -- Notification library
local beautiful = require("beautiful") -- Theme handling library
local gears = require("gears")

function handleStartupErrors()
	if awesome.startup_errors then
		naughty.notify({
			preset = naughty.config.presets.critical,
			title = "Oops, there were errors during startup!",
			text = awesome.startup_errors,
		})
	end
end

function handleOtherErrors()
	do
		local in_error = false
		awesome.connect_signal("debug::error", function(err)
			-- Make sure we don't go into an endless error loop
			if in_error then
				return
			end
			in_error = true

			-- awful.spawn("notify-send Oops, an error happended" .. tostring(error))
			naughty.notify({
				preset = naughty.config.presets.critical,
				title = "Oops, an error happened!",
				text = tostring(err),
			})
			in_error = false
		end)
	end
end

function setWallpaper(s)
	-- Wallpaper
	if beautiful.wallpaper then
		local wallpaper = beautiful.wallpaper
		-- If wallpaper is a function, call it with the screen
		if type(wallpaper) == "function" then
			wallpaper = wallpaper(s)
		end
		gears.wallpaper.maximized(wallpaper, s, true)
	end
end

function colorize_icon(icon, color)
	local tags = gears.color.recolor_image(icon, color)
	return tags
end
