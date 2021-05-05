return require'packer'.startup(
    function()
        use 'wbthomason/packer.nvim'
        use 'neovim/nvim-lspconfig'
        use 'glepnir/lspsaga.nvim'
        -- use 'OmniSharp/omnisharp-vim'
    end
)
