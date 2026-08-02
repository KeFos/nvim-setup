vim.g.mapleader = " "

vim.keymap.set("n", "<C-c>", ":nohl<CR>", { desc = "Remove highlight" })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Moves lines down in visual selection" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Moves lines up in visual selection" })

vim.keymap.set("i", "<C-s>", "<C-o>:w<CR>", { desc = "Write file while in insert mode" })

-- LSP helper keymaps
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition"})
vim.keymap.set("n", "K",
  function()
    vim.lsp.buf.hover({ border = "rounded" })
  end,
  { desc = "Hover documentation" }
)
vim.keymap.set("n", "df",
  function()
    vim.diagnostic.open_float({ border = "rounded" })
  end,
  { desc = "Open diagnostic screen" }
)
