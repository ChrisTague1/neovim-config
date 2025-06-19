vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use {
        'nvim-telescope/telescope.nvim', branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use('nvim-treesitter/playground')
    use('theprimeagen/harpoon')
    use('mbbill/undotree')
    use 'navarasu/onedark.nvim'
    use 'm4xshen/autoclose.nvim'
    use 'windwp/nvim-ts-autotag'
    use 'tpope/vim-fugitive'
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }
    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })
    use 'tpope/vim-sleuth'
    use 'Shatur/neovim-ayu'
    use {
        'mason-org/mason-lspconfig.nvim',
        requires = {
            { 'mason-org/mason.nvim', config = function() require('mason').setup({}) end },
            "neovim/nvim-lspconfig",
        },
        config = function()
            require('mason-lspconfig').setup({})
        end
    }
end)
