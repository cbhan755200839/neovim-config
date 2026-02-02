local map = vim.keymap.set

-- 描述、是否递归、是否静默
local function opts(desc, remap, silent)
	local desc_val = desc or ""
	local remap_val = remap or false
	local silent_val = silent or true
	return { desc = desc_val, remap = remap_val, silent = silent_val }
end

-- '' 所有模式
-- n 普通模式
-- i 插入模式
-- v 可视模式
-- x 可视块模式
-- s 选择模式
-- c 命令行模式
-- t 终端模式

-- 主快捷键
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

map("", "<Space>", "<Nop>", opts("主快捷键"))

map("", "<C-s>", "<Esc>:w<CR>", opts("保存当前文件"))
map("i", "<C-s>", "<Esc>:w<CR>", opts("保存当前文件"))
map("", "<C-c>", "<Esc>", opts("退出当前模式"))
map("", "<C-a>", "<Esc>ggVG", opts("全选文本"))

map("n", "<C-z>", "u", opts("撤销"))
map("i", "<C-z>", "<C-o>u", opts("撤销"))
map("n", "<C-S-z>", "<C-r>", opts("重做"))
map("i", "<C-S-z>", "<C-o><C-r>", opts("重做"))

map("n", "<Tab>", ">>", opts("向右缩进"))
map("n", "<S-Tab>", "<<", opts("向左缩进"))
map("v", "<Tab>", ">gv", opts("向右缩进"))
map("v", "<S-Tab>", "<gv", opts("向左缩进"))
map("i", "<S-Tab>", "<Esc><<i", opts("向左缩进"))

map("", "h", "h", opts("左←"))
map("", "j", "j", opts("下↓"))
map("", "k", "k", opts("上↑"))
map("", "l", "l", opts("右→"))
map("", "<C-j>", "9j", opts("向下9行"))
map("", "<C-k>", "9k", opts("向上9行"))
map("", "<A-h>", "<C-w>h", opts("移动到左侧窗口"))
map("", "<A-j>", "<C-w>j", opts("移动到下侧窗口"))
map("", "<A-k>", "<C-w>k", opts("移动到上侧窗口"))
map("", "<A-l>", "<C-w>l", opts("移动到右侧窗口"))
map("", "<A-Left>", "<C-w>h", opts("移动到左侧窗口"))
map("", "<A-Down>", "<C-w>j", opts("移动到下侧窗口"))
map("", "<A-Up>", "<C-w>k", opts("移动到上侧窗口"))
map("", "<A-Right>", "<C-w>l", opts("移动到右侧窗口"))

map("", "<C-CR>", "<Esc>O", opts("下方另起一行"))
map("", "<S-CR>", "<Esc>o", opts("下方另起一行"))
map("i", "<C-CR>", "<Esc>O", opts("下方另起一行"))
map("i", "<S-CR>", "<Esc>o", opts("下方另起一行"))

map("", "<leader><Tab>", "<Cmd>BufferLineCycleNext<CR>", opts("下一个标签页"))
map("", "<leader><S-Tab>", "<Cmd>BufferLineCycleNext<CR>", opts("上一个标签页"))
map("", "<leader>w", "<Cmd>BufferLinePickClose<CR>", opts("关闭标签页"))
map("n", "<leader>bl", "<cmd>BufferLineMoveNext<cr>", opts("当前标签页右移"))
map("n", "<leader>bh", "<cmd>BufferLineMovePrev<cr>", opts("当前标签页左移"))

map("", "<leader>ff", function()
	require("conform").format()
end, opts("代码格式化"))

map("n", "K", vim.diagnostic.open_float, opts("展示诊断信息"))
map("n", "gK", vim.lsp.buf.hover, opts("展示定义"))
map("n", "gd", vim.lsp.buf.definition, opts("跳转定义"))
map("n", "gi", vim.lsp.buf.references, opts("跳转引用"))

map("v", "p", '"_dP', opts("粘贴"))
