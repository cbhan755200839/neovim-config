-- 图标
return {
	{
		"nvim-mini/mini.icons",
		config = function()
			require("mini.icons").setup({
				override_nvim_web_devicons = true,
			})
		end,
	},
	{
		"nvim-tree/nvim-web-devicons",
	},
}
