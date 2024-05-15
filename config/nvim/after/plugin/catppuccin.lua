vim.cmd.colorscheme "catppuccin-mocha"

require("catppuccin").setup({
  integrations = {
    nvimtree = true,
    treesitter = true,
    mason = true,
    telescope = {
      enabled = true,
    },
    native_lsp = {
      enabled = true,
      virtual_text = {
        errors = { "italic" },
        hints = { "italic" },
        warnings = { "italic" },
        information = { "italic" },
      },
      underlines = {
        errors = { "underline" },
        hints = { "underline" },
        warnings = { "underline" },
        information = { "underline" },
      },
      inlay_hints = {
        background = true,
      },
    },
  }
})
