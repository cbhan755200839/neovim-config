local opt = vim.opt

-- 绝对行号
opt.number = true
-- 相对行号
opt.relativenumber = false
-- 高亮当前行
opt.cursorline = true

-- tab设置
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4

-- 缩进
opt.autoindent = true
opt.smartindent = true

-- 自动换行
opt.wrap = true

-- 支持中文编码，避免乱码
opt.encoding = "utf-8"

-- 启用真彩色
opt.termguicolors = true

-- 剪贴板
opt.clipboard = "unnamedplus"

-- 增大撤销历史上限，支持更多单步撤销记录
opt.undolevels = 10000
-- 加载大文件时，保留足够的撤销历史
opt.undoreload = 100000
