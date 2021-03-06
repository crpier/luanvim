local execute = vim.api.nvim_command
local fn = vim.fn
local use = require('packer').use

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end

-- This file can be loaded by calling `lua require('plugins')` from your init.vim

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'morhetz/gruvbox'
  use 'kyazdani42/nvim-tree.lua'
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-compe'
  use 'kabouzeid/nvim-lspinstall'
  use 'tpope/vim-unimpaired'
  use 'tpope/vim-surround'
  use 'bkad/CamelCaseMotion'
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'kyazdani42/nvim-web-devicons'
  use 'glepnir/galaxyline.nvim'
  use { 'akinsho/nvim-bufferline.lua', requires = 'kyazdani42/nvim-web-devicons' }

  -- Telescope
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-media-files.nvim'

  use 'glepnir/lspsaga.nvim'
  -- A bit of pandering, should remove
  use 'onsails/lspkind-nvim'
  use 'kosayoda/nvim-lightbulb'
  use 'mfussenegger/nvim-jdtls'
  use 'mfussenegger/nvim-dap'
  use 'christianchiarulli/nvcode-color-schemes.vim'
  use {
      'lewis6991/gitsigns.nvim',
      requires = {
          'nvim-lua/plenary.nvim'
      },
      config = function()
          require('gitsigns').setup()
      end
  }
end)
