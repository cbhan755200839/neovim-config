-- 高亮
return {
	{
		"nvim-treesitter/nvim-treesitter",
		-- 安装/更新解析器后自动编译
		build = ":TSUpdate",
		-- 非懒加载
		lazy = false,
		-- 配置
		opts = {
			-- 自动安装缺失的解析器
			auto_install = true,
			-- 启用语法高亮
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
			-- 缩进
			indent = {
				enable = true,
			},
			ensure_installed = {
				"vim",
				"vimdoc",
			},
		},
	},
}
