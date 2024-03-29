local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup {
  function(use)
    use { 'wbthomason/packer.nvim' }

      use 'nvim-lua/plenary.nvim'
    use {
      'hrsh7th/nvim-cmp',
      config = function()
        require('plugins.cmp')
      end
    }
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use {
      'neovim/nvim-lspconfig',
      config = function()
        require('plugins.lspconfig')
      end
    }
    use {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate',
      config = function()
        require('plugins.treesitter')
      end
    }

    use {
      'kyazdani42/nvim-web-devicons',
      config = function()
        require('nvim-web-devicons').setup({ default = true; })
      end
    }   

    use('onsails/lspkind-nvim')

    use {
      'nvim-telescope/telescope.nvim',
      config = function()
        require('plugins.telescope')
      end
    }

    use {
      'nvim-lualine/lualine.nvim',
      config = function()
        require('plugins.lualine')
      end
    }

    use { 
      'williamboman/mason.nvim',
      ui = {
        icons = {
            package_installed = '✓',
            package_pending = '➜',
            package_uninstalled = '✗'
        },
      },
      config = function()
        require('mason').setup ()
      end 
    }

    use { 
      'williamboman/mason-lspconfig.nvim',
      config = function()
        require('mason-lspconfig').setup({
          automatic_installation = true,
          ensure_installed = { 
            'sumneko_lua', 
            'rust_analyzer',
            'tsserver',
            'html',
            'tailwindcss',
-- this is special 'omnisharp',
          },
        })
      end
    }

    use 'github/copilot.vim'

    if packer_bootstrap then
      require('packer').sync()
    end
  end
}
