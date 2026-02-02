-- 主题
return {
	{
		"catppuccin/nvim",
		-- 显式指定插件名，方便后续调用
		name = "catppuccin",
		-- 非懒加载
		lazy = false,
		-- 优先级
		priority = 1000,
		-- 配置
		opts = {
			-- 透明背景
			transparent_background = true,
			-- 终端配色同步
			term_colors = true,
			-- 插件适配(可在插件处另行配置)
			integrations = {},
			custom_highlights = function()
				return {
					-- 所有浮窗默认背景
					NormalFloat = { bg = "NONE" },
					-- 所有浮窗边框
					FloatBorder = { bg = "NONE" },
				}
			end,
		},
		config = function(_, opts)
			require("catppuccin").setup(opts)
			vim.cmd.colorscheme("catppuccin-macchiato")
		end,
	},
}
