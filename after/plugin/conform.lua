local conform = require("conform")

conform.setup({
	formatters_by_ft = {
		lua = { "stylua" },
		python = { "ruff_format", "isort" },
		html = { "prettier" },
		yaml = { "prettier" },
		json = { "prettier" },
		markdown = { "prettier" },
		go = { "gofumpt", "goimports" },
	},

	format_on_save = {
		timeout_ms = 500,
		lsp_fallback = true,
		async = false,
	},
})

-- vim.api.nvim_create_autocmd("BufReadPre", {
--   pattern = "*",
--   callback = function(args)
--     conform.format({ bufnr = args.buf })
--   end,
-- })
--
-- vim.api.nvim_create_autocmd("BufWritePre", {
--   pattern = "*",
--   callback = function(args)
--     conform.format({ bufnr = args.buf })
--   end,
-- })
