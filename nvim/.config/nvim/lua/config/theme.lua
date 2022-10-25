local colorscheme_plugin = 'nightfox'
local color_plug_ok, color = pcall(require, colorscheme_plugin)
if color_plug_ok then
	local colorscheme = "terafox"
	color.setup({
		options = {
			transparent = true,    -- Disable setting background
			terminal_colors = true, -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
			dim_inactive = false,   -- Non focused panes set to alternative background
		}
	})

	local set_color_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
	if not set_color_ok then
		vim.notify("colorscheme " .. colorscheme .." not found!")
	end
end

local lualine_is_ok, lualine = pcall(require, "lualine")
if lualine_is_ok then
	lualine.setup()
	return
else
	vim.notify("lualine not found!")
end
