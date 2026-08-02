return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons", -- optional, but recommended
    },
    config = function()
      require("neo-tree").setup({
        window = { width = "25%" }
      })
      require("nvim-web-devicons").setup({
        -- Optional: Customize specific icons or colors
        override = {
          zsh = { icon = "", color = "#428850", name = "Zsh" }
        },
        -- Enable default icons if no specific icon is found
        default = true,
      })
    end,
    lazy = false, -- neo-tree will lazily load itself
  }
}
