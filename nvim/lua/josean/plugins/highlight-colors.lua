local setup, nvimHighligtColors = pcall(require, "nvim-highlight-colors")
if not setup then
	return
end
-- require("nvim-highlight-colors").setup({})
require("nvim-highlight-colors").setup({
	render = "background", -- or 'foreground' or 'first_column'
	enable_named_colors = true,
	enable_tailwind = false,
})
