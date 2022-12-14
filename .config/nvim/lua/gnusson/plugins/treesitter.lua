-- import nvim-treesitter plugin safely --
local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
	print("Nvim-treesitter.configs not found!") -- print error if plugin not installed
	return
end

-- configure treesitter --
treesitter.setup({
	-- enable syntax highlighting --
	highlight = {
		enable = true,
	},
	-- nvmm-ts-rainbow
	rainbow = {
		enable = true,
		extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
		max_file_lines = nil, -- Do not enable for files with more than n lines, int
	},
	-- enable indentation --
	indent = { enable = true },
	-- enable autotagging (w/ nvim-ts-autotag plugin) ..
	autotag = { enable = true },
	-- ensure these language parsers are installed --
	ensure_installed = {
		"json",
		"javascript",
		"typescript",
		"tsx",
		"yaml",
		"html",
		"css",
		"markdown",
		"svelte",
		"graphql",
		"bash",
		"lua",
		"vim",
		"dockerfile",
		"gitignore",
	},
	-- auto install above language parsers --
	auto_install = true,
})
