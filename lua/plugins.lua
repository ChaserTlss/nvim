-- vim.cmd [[packadd packer.nvim]]

-- vim._update_package_paths()

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
    'lewis6991/gitsigns.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
    config = function() require('gitsigns').setup{current_line_blame = true,} end
  }

  use 'preservim/tagbar'

  end)
