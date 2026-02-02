-- 全局环境变量（覆盖所有工具链）
local steam_ca_path = "/etc/ssl/certs/watt-ca.pem"
vim.env.SSL_CERT_FILE = steam_ca_path
vim.env.REQUESTS_CA_BUNDLE = steam_ca_path
vim.env.CURL_CA_BUNDLE = steam_ca_path
vim.env.GIT_SSL_CAINFO = steam_ca_path
vim.env.NODE_EXTRA_CA_CERTS = steam_ca_path
vim.env.LUA_SSL_CAFILE = steam_ca_path
vim.env.TREE_SITTER_CURL_ARGS = "--cacert " .. steam_ca_path

vim.g.curl_ca_bundle = steam_ca_path
vim.cmd("let $CURL_CA_BUNDLE = '" .. steam_ca_path .. "'")

-- Neovim 内置 curl 配置
vim.g.curl_ca_bundle = "/etc/ssl/certs/watt-ca.pem"

require("config")
