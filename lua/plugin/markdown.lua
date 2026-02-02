-- makdown .md 格式文件相关插件
return {
	{
		"preservim/vim-markdown",
		ft = "markdown",
	},
	{
		"iamcco/markdown-preview.nvim",
		cmd = {
			"MarkdownPreviewToggle",
			"MarkdownPreview",
			"MarkdownPreviewStop",
		},
		ft = "markdown",
		build = function()
			vim.fn["mkdp#util#install"]()
		end,
		keys = {
			{ "<leader>md", "<cmd>MarkdownPreviewToggle<CR>", desc = "Markdown预览开关" },
		},
		config = function()
			vim.g.mkdp_auto_close = 1
			vim.g.mkdp_open_to_the_world = 0
			vim.g.mkdp_port = 8888
		end,
	},
}
