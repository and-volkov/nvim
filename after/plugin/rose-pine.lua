require('rose-pine').setup({
	--- @usage 'auto'|'main'|'moon'|'dawn'
	variant = 'main',
	--- @usage 'main'|'moon'|'dawn'
	dark_variant = 'main',
	bold_vert_split = false,
	dim_nc_background = true,
	disable_background = true,
	disable_float_background = true,
	disable_italics = true
})

vim.cmd("colorscheme rose-pine")