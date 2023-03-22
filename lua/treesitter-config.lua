require 'nvim-treesitter.configs'.setup {
	-- A list of parser names, or "all" (the four listed parsers should always be installed)
	-- ensure_installed = { "c", "lua", "vim", "help" },
	ensure_installed = "all",

	-- Install parsers synchronously (only applied to `ensure_installed`)
	sync_install = false,

	-- Automatically install missing parsers when entering buffer
	-- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
	auto_install = true,

	-- List of parsers to ignore installing (for "all")
	-- ignore_install = { "javascript" },

	---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
	-- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

	highlight = {
		-- `false` will disable the whole extension
		enable = true,

		-- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
		-- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
		-- the name of the parser)
		-- list of language that will be disabled
		disable = { "reason" },
		-- Or use a function for more flexibility, e.g. to disable slow treesitter highlight for large files
		-- disable = function(lang, buf)
		-- 	local max_filesize = 100 * 1024 -- 100 KB
		-- 	local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
		-- 	if ok and stats and stats.size > max_filesize then
		-- 		return true
		-- 	end
		-- end,

		-- Setting this to true will run `:h syntax` and tree-sitter at the same time.
		-- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
		-- Using this option may slow down your editor, and you may see some duplicate highlights.
		-- Instead of true it can also be a list of languages
		-- additional_vim_regex_highlighting = { "elixir" },
		additional_vim_regex_highlighting = false,
		-- additional_vim_regex_highlighting = { "reason" },

	},
	indent = {
		enable = true,
		-- disable = { "python" },
	},
	incremental_selection = {
		enable = true,
		keymaps = {
			init_selection = "<leader>v",
			node_incremental = "<Up>",
			scope_incremental = "gnc",
			node_decremental = "<Down>",
		},
	},

	rainbow = {
		enable = true,
		-- list of languages you want to disable the plugin for
		disable = { "jsx", "cpp" },
		-- Which query to use for finding delimiters
		query = 'rainbow-parens',
		-- Highlight the entire buffer all at once
		strategy = require 'ts-rainbow.strategy.global',
	}

}