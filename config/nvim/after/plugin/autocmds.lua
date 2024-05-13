-- go configuration
vim.api.nvim_create_autocmd(
  "FileType",
  { pattern = { "go" }, command = "silent! lua vim.opt.expandtab = false" }
)

-- Format buffer during save
vim.api.nvim_create_autocmd(
  "BufWritePre",
  { command = "lua vim.lsp.buf.format()" }
)
