local neo = require("neogit")

neo.setup({
	disable_signs = false,
	disable_context_highlighting = false,
	disable_commit_confirmation = false,
	auto_refresh = true,
	disable_builtin_notifications = false,
	commit_popup = {
		kind = "split",
	},
	-- customize displayed signs
	signs = {
		-- { CLOSED, OPENED }
		section = { ">", "v" },
		item = { ">", "v" },
		hunk = { "", "" },
	},
	integrations = {
		diffview = true,
	},
	-- override/add mappings
	mappings = {
		-- modify status buffer mappings
		status = {},
	},
})

vim.api.nvim_set_keymap("n", "<leader>Gg", ":Neogit<CR>", { noremap = true, silent = true })
