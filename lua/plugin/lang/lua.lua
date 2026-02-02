-- lua
return {
	-- 高亮
	{
		"nvim-treesitter/nvim-treesitter",
		opts = {
			ensure_installed = {
				"lua",
			},
		},
	},

	-- lsp
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {
			ensure_installed = { "lua_ls" },
		},
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			-- lua 配置
			vim.lsp.config["lua_ls"] = {
				-- lua 类型文件自动加载
				filetypes = { "lua" },
				settings = {
					Lua = {
						diagnostics = {
							-- 全局变量
							globals = {
								"vim",
								"Snacks",
							},
						},
						-- 版本
						runtime = {
							version = "LuaJIT",
						},
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
				lua = {
					"stylua",
				},
			},
		},
	},
}
