return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
            "mason-org/mason-lspconfig.nvim",
            "mason-org/mason.nvim",
		},
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			vim.lsp.config("vtsls", {
				capabilities = capabilities,
			})
			vim.lsp.enable("vtsls")
		end,
	}
}
