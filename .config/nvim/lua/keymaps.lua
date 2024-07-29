local mappings = {
	b = {
		name = "buffers",
		b = {
			"<cmd>lua require('telescope.builtin').buffers(require('telescope.themes').get_dropdown{ previewer = false })<cr>",
			"Buffers",
		},
		x = { "<cmd> lua require('bufdelete').bufdelete(0, true)<cr>", "Close Buffer" },
	},
	["w"] = { "<cmd>w!<CR>", "Save" },
	["q"] = { "<cmd>q!<CR>", "Quit" },
	l = {
		name = "LSP",
		a = { "<cmd>lua vim.lsp.buf.code_action()<cr>", "Code Action" },
		d = {
			"<cmd>Telescope diagnostics bufnr=0<cr>",
			"Document Diagnostics",
		},
		f = { "<cmd>lua require('conform').format()<cr>", "Format" },
		g = { "<cmd>LazyGit<CR>", "Lazygit" },
		w = {
			"<cmd>Telescope diagnostics<cr>",
			"Workspace Diagnostics",
		},
		i = { "<cmd>LspInfo<cr>", "Info" },
		I = { "<cmd>LspInstallInfo<cr>", "Installer Info" },
		j = {
			"<cmd>lua vim.lsp.diagnostic.goto_next()<CR>",
			"Next Diagnostic",
		},
		k = {
			"<cmd>lua vim.lsp.diagnostic.goto_prev()<cr>",
			"Prev Diagnostic",
		},
		S = {
			"<cmd>Telescope lsp_dynamic_workspace_symbols<cr>",
			"Workspace Symbols",
		},
	},
	s = {
		name = "Search",
		b = { "<cmd>Telescope git_branches<cr>", "Checkout branch" },
		c = { "<cmd>Telescope colorscheme<cr>", "Colorscheme" },
		h = { "<cmd>Telescope help_tags<cr>", "Find Help" },
		M = { "<cmd>Telescope man_pages<cr>", "Man Pages" },
		r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
		R = { "<cmd>Telescope registers<cr>", "Registers" },
		k = { "<cmd>Telescope keymaps<cr>", "Keymaps" },
		C = { "<cmd>Telescope commands<cr>", "Commands" },
		f = {
			"<cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_ivy())<cr>",
			"Find Files",
		},
		g = {
			"<cmd>lua require('telescope.builtin').live_grep(require('telescope.themes').get_ivy())<cr>",
			"Live Grep",
		},
	},
	t = {
		name = "Telescope",
		n = { "<cmd>lua _NODE_TOGGLE()<cr>", "Node" },
		u = { "<cmd>lua _NCDU_TOGGLE()<cr>", "NCDU" },
		t = { "<cmd>lua _HTOP_TOGGLE()<cr>", "Htop" },
		p = { "<cmd>lua _PYTHON_TOGGLE()<cr>", "Python" },
		f = { "<cmd>ToggleTerm direction=float<cr>", "Float" },
		h = { "<cmd>ToggleTerm size=10 direction=horizontal<cr>", "Horizontal" },
		v = { "<cmd>ToggleTerm size=80 direction=vertical<cr>", "Vertical" },
	},
}
local opts
local wk = require("which-key")
wk.register(mappings, opts)

local keymaps = {
	{ "n", "<leader>", ":WhichKey<CR>", opts },
	{ { "i", "n" }, "<C-s>", ":w<CR>", opts },
	{ "n", "<leader>bp", "<Cmd>BufferLineTogglePin<CR>", desc = "Toggle Pin" },
	{ "n", "<leader>bP", "<Cmd>BufferLineGroupClose ungrouped<CR>", desc = "Delete Non-Pinned Buffers" },
	{ "n", "<leader>bo", "<Cmd>BufferLineCloseOthers<CR>", desc = "Delete Other Buffers" },
	{ "n", "<leader>br", "<Cmd>BufferLineCloseRight<CR>", desc = "Delete Buffers to the Right" },
	{ "n", "<leader>bl", "<Cmd>BufferLineCloseLeft<CR>", desc = "Delete Buffers to the Left" },
	{ "n", "<S-h>", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev Buffer" },
	{ "n", "<S-l>", "<cmd>BufferLineCycleNext<cr>", desc = "Next Buffer" },
	{ "n", "<A-v>", "<cmd>vsplit<cr>", desc = "vertcal split" },
	{ "n", "<C-n>", "<cmd>Neotree toggle<cr>", desc = "Explorer" },
	{ "n", "<C-j>", "<cmd>:m+1<cr>", desc = "Move a line down" },
	{ "n", "<C-k>", "<cmd>:m-2<cr>", desc = "Move a line up" },
}

return keymaps
