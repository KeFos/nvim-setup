return {
  {
    "mason-org/mason.nvim",
    dependencies = { "nvim-mini/mini.nvim" },
    config = function ()
      require("mason").setup({
        firewall = {
          enabled = true,
          auto_managed = true,
        },
        ui = {
          icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
          },
        },
      })

      --- Mini Completions ---
      local MiniCompletion = require("mini.completion")
      MiniCompletion.setup({
        lsp_completion = {
          auto_setup = true,
          process_items = function(items, base)
            return MiniCompletion.default_process_items(items, base , {
              filtersort = "fuzzy",
            })
          end,
        }
      })

      local capabilities = vim.lsp.protocol.make_client_capabilities()
      capabilities = vim.tbl_deep_extend(
        "force",
        capabilities,
        MiniCompletion.get_lsp_capabilities()
      )
      vim.lsp.config("*", { capabilities = capabilities })
    end,
  },
}
