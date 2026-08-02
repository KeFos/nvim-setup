return {
  capabilities = {
    textDocument = {
      completion = {
        editsNearCursor = true,
      },
    },
    offsetEncoding = { 'utf-8', 'utf-16' },
  },
  cmd = { 'clangd', '--background-index', '--clang-tidy' },
  filetypes = { "c", "cpp", "h", "hpp" },
  root_markers = {
    'compile_commands.json',
    'compile_flags.txt',
    '.clangd',
    '.clang-tidy',
    '.git',
  },
}
