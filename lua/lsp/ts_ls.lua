return {
  init_options = { hostInfo = 'neovim' },
  cmd = function(dispatchers, config)
    local cmd = 'typescript-language-server'
    if (config or {}).root_dir then
      local local_cmd = vim.fs.joinpath(config.root_dir, 'node_modules/.bin', cmd)
      if vim.fn.executable(local_cmd) == 1 then
        cmd = local_cmd
      end
    end
    return vim.lsp.rpc.start({ cmd, '--stdio' }, dispatchers)
  end,
  filetypes = {
    'typescript',
    'typescriptreact',
    'javascript',
    'javascriptreact'
  },
  root_dir = vim.fs.root(0, {
    'package.json',
    '.git',
    'tsconfig.json'
  }),
  on_attach = function(client, bufnr)
    -- Add custom keymaps here
  end,
  -- capabilities = require('cmp_nvim_lsp').default_capabilities(),
}
