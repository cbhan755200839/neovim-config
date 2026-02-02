-- 快捷键帮助
return {
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		opts = {},
		keys = {
			{
				"<leader>?",
				function()
					require("which-key").show({ global = false })
				end,
				desc = "主快捷键",
			},
		},
		config = function()
			require("which-key").add({
				{ "<leader>f", group = "文件" },
			})
		end,
	},
}
