vim.pack.add({
  { src = "https://github.com/neovim/nvim-lspconfig" },
})

require("options")
require("keymaps")
require("config.lsp")
require("config.lazy")
