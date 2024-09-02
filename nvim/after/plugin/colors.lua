function ColorMyPencils(color)
	-- color = color or "rose-pine"
	color = color or "quiet"
	vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Keyword", { bold = true })
    vim.api.nvim_set_hl(0, "Comment", { italic = true })
    vim.api.nvim_set_hl(0, "Constant",  { fg = "#999999" })
    vim.api.nvim_set_hl(0, "NormalFloat", {bg = "#333333" })

	-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMyPencils()
