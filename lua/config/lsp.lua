-- Load all .lua files in the lua/lsp directory
local plugins_dir = vim.fn.stdpath("config") .. "/lua/lsp"
for _, file in ipairs(vim.fn.readdir(plugins_dir, [[v:val =~ '\.lua$']])) do
    local module_name = file:gsub("%.lua$", "")

    local lsp_module = require("lsp." .. module_name)
    vim.lsp.config(module_name, lsp_module)
    vim.lsp.enable(module_name)
end
