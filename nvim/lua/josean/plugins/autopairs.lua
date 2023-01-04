-- import nvim-autopairs safely
local autopairs_setup, autopairs = pcall(require, "nvim-autopairs")
if not autopairs_setup then
	return
end

-- configure autopairs
autopairs.setup({
	check_ts = true, -- enable treesitter
	ts_config = {
		lua = { "string" }, -- don't add pairs in lua string treesitter nodes
		javascript = { "template_string" }, -- don't add pairs in javscript template_string treesitter nodes
		java = false, -- don't check treesitter on java
	},
})

-- import nvim-autopairs completion functionality safely
local cmp_autopairs_setup, cmp_autopairs = pcall(require, "nvim-autopairs.completion.cmp")
if not cmp_autopairs_setup then
	return
end

-- import nvim-cmp plugin safely (completions plugin)
local cmp_setup, cmp = pcall(require, "cmp")
if not cmp_setup then
	return
end
cmp.setup({
	window = {
		-- completion = { -- rounded border; thin-style scrollbar
		-- 	border = "rounded",
		-- 	scrollbar = "║",
		-- },
		-- documentation = { -- no border; native-style scrollbar
		-- 	-- border = nil,
		-- 	border = "rounded",
		-- 	scrollbar = "",
		-- 	-- other options
		-- },
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered(),
	},
	-- other options
})
-- make autopairs and completion work together
cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
