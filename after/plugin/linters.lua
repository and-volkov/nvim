local lint = require("lint")

lint.linters_by_ft = {
	python = { "ruff", "flake8", "mypy" },
	go = { "golangcilint" },
}

local pattern = "([^:]+):(%d+):(%d+):(%d+):(%d+): (%a+): (.*)"
local groups = { "file", "lnum", "col", "end_lnum", "end_col", "severity", "message" }
local severities = {
	error = vim.diagnostic.severity.ERROR,
	warning = vim.diagnostic.severity.WARN,
	note = vim.diagnostic.severity.HINT,
}

lint.linters.mypy = {
	cmd = "mypy",
	stdin = false,
	ignore_exitcode = true,
	args = {
		"--ignore-missing-imports",
		"--show-column-numbers",
		"--show-error-end",
		"--hide-error-context",
	},
	parser = require("lint.parser").from_pattern(
		pattern,
		groups,
		severities,
		{ ["source"] = "mypy" },
		{ end_col_offset = 0 }
	),
}
-- local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

vim.api.nvim_create_autocmd({ "BufWritePost", "BufEnter", "InsertLeave" }, {
	callback = function()
		lint.try_lint()
	end,
})
