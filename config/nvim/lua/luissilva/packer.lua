-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
    -- or                            , branch = '0.1.x',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

  use('mbbill/undotree')
  use('tpope/vim-fugitive')

  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' }, -- Required
      {
        -- Optional
        'williamboman/mason.nvim',
        run = function()
          pcall(vim.cmd, 'MasonUpdate')
        end,
      },
      { 'williamboman/mason-lspconfig.nvim' }, -- Optional

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },     -- Required
      { 'hrsh7th/cmp-nvim-lsp' }, -- Required
      { 'L3MON4D3/LuaSnip' },     -- Required
    },

    use('vim-airline/vim-airline'),

    use('christoomey/vim-tmux-navigator', { lazy = false }),

    use { "catppuccin/nvim", as = "catppuccin" },

    use('dylon/vim-antlr'),

    use {
      'nvim-tree/nvim-tree.lua',
      requires = {
        'nvim-tree/nvim-web-devicons', -- optional
      },
      config = function()
        require("nvim-tree").setup {}
      end
    },


    -- Neovim doesn't provide a way for non-LSP sources to hook into its LSP client.
    -- null-ls is an attempt to bridge that gap
    use({
      "jose-elias-alvarez/null-ls.nvim",
      config = function()
        require("null-ls").setup()
      end,
      requires = { "nvim-lua/plenary.nvim" },
    }),

    -- GitHub Copilot
    use('github/copilot.vim'),

    -- Commenting lines
    use('preservim/nerdcommenter'),

    -- SCSS Syntax
    use('cakebaker/scss-syntax.vim')

  }
end)
