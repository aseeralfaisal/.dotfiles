return {
	"stevearc/conform.nvim",
	config = function()
		local conform = require("conform")
		conform.setup({
			format = {
				timeout_ms = 100000000000000000000000000000000000000000000,
				async = true, -- not recommended to change
				quiet = false, -- not recommended to change
				lsp_fallback = true, -- not recommended to change
			},
			formatters_by_ft = {
				lua = { "stylua" },
				javascript = { "prettierd", "prettier", stop_after_first = false },
				typescript = { "prettierd", "prettier", stop_after_first = true },
				typescriptreact = { "prettierd", "prettier", stop_after_first = true },
			},
			format_on_save = {
				timeout_ms = 1000000000000000000000000000000000000000000000,
				lsp_fallback = true,
			},
		})
	end,
}
