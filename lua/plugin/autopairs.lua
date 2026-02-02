-- 自动补全括号插件
return {
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		opts = {
			fast_wrap = false,
			check_ts = false,
		},
	},
}
