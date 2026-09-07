local ensure_installed = {
  "lua", "javascript", "typescript", "html", "c", "cpp", "tsx", "go", "python"
}

return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    ensure_installed = ensure_installed,
    config = function()
      require("nvim-treesitter.config").setup({
        sync_install = false,
        highlight = { enable = true },
        indent = { enable = true },
      })

      local Treesitter = require("nvim-treesitter")
      Treesitter.install(ensure_installed)

      vim.api.nvim_create_autocmd("FileType", {
        pattern = "*",
        callback = function (args)
          local buf = args.buf
          local ft = vim.bo[buf].filetype

          local lang = vim.treesitter.language.get_lang(ft)
          if not lang then
            return
          end

          local ok_add = pcall(vim.treesitter.language.add, lang)
          if not ok_add then
            return
          end

          pcall(vim.treesitter.start, buf, lang)
        end,
      })
    end,
}
