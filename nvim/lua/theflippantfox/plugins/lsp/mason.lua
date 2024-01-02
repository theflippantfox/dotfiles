return {
    'neovim/nvim-lspconfig',
    dependencies = {
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
    },
    config = function()
        require('mason').setup()
        require('mason-lspconfig').setup({
            ensure_installed = {
                "lua_ls",
                "tsserver",
                "rust_analyzer",
            },
            automatic_installation = true,
        })

        local lspconfig = require('lspconfig')
        local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()
        lspconfig.lua_ls.setup({
            capabilities = lsp_capabilities,
        })

        local servers = { 'lua_ls', 'tsserver', 'rust_analyzer' }

    end
}
