return {
  'nvim-telescope/telescope.nvim', version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    -- optional
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
  },
  -- Define keymaps that trigger loading and execution
  keys = {
      { '<leader>fg', "<cmd>Telescope live_grep<cr>", desc = "Live Grep" },
      { '<C-p>', "<cmd> Telescope find_files<cr>", desc = "Find Files" },
      { '<C-n>', ":Neotree filesystem reveal left<cr>", desc = "Neo Tree" },
  },
}
