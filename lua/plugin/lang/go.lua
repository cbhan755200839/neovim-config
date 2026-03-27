-- go
return {
	-- 高亮
	{
		"nvim-treesitter/nvim-treesitter",
		opts = {
			ensure_installed = {
				"go",
				"gomod",
				"gowork",
				"gosum",
				"html",
			},
		},
	},

	--lsp
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {
			ensure_installed = { "gopls" },
		},
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			vim.lsp.config["gopls"] = {
				filetypes = {
					"go",
					"gomod",
					"gowork",
					"gosum",
					"html",
					"tmpl",
				},
				settings = {
					gopls = {
						completeUnimported = true,
						usePlaceholders = true,
						analyses = {
							unusedparams = true,
							nilness = true,
							unusedwrite = true,
							useany = true,
						},
						staticcheck = true,
						gofumpt = true,
					},
				},
			}
		end,
	},

	-- 代码格式化
	{
		"stevearc/conform.nvim",
		opts = {
			formatters_by_ft = {
				go = {
					"goimports",
					"gofumpt",
				},
				html = { "djlint" },
				tmpl = { "djlint" },
			},
		},
	},
}
