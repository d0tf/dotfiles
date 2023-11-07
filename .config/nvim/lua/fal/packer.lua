local status, packer = pcall(require, "packer")
if not status then
  print("packer is not installed")
end

vim.cmd([[packadd packer.nvim]])

packer.startup(function(use)
  use("wbthomason/packer.nvim")
  use("nvim-tree/nvim-web-devicons")
  use("norcalli/nvim-colorizer.lua")
  use("folke/trouble.nvim")
  use("laytan/cloak.nvim")
  use("mbbill/undotree")
  use("wuelnerdotexe/vim-astro")
  use("eandrju/cellular-automaton.nvim")
  use("numToStr/Comment.nvim")
  use({
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  })
  use({
    "bluz71/vim-moonfly-colors",
    as = "moonfly"
  })
  use({
    "nvim-treesitter/nvim-treesitter",
    requires = { {
      "windwp/nvim-ts-autotag"
    } },
    run = function()
      local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
      ts_update()
    end,
  })
  use({
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    requires = { {
      "nvim-lua/plenary.nvim"
    } }
  })
  use({
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    requires = {
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },
      -- LSP Support
      { 'neovim/nvim-lspconfig' },
      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'L3MON4D3/LuaSnip' },
    }
  })
end)
