return {
  "nvim-mini/mini.nvim",
  version = false,
  config = function()
    local MiniExtra = require("mini.extra")

    vim.keymap.set("n", "<leader>xx", function() MiniExtra.pickers.diagnostic() end, { desc = "Mini Picker Diagnostic" })

    --- Mini Command Line Completion ---
    require("mini.cmdline").setup({
      autocorrect = { enable = false }
    })
  end,
}
