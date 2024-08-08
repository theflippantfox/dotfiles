return {
    'neovim/nvim-lspconfig',
    dependencies = {
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
    },
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        require('mason').setup()
        require('mason-lspconfig').setup({
            ensure_installed = {
                --                "lua_ls",
                --                "tsserver",
                --                "rust_analyzer",
            },
            automatic_installation = true,
        })

        local lspconfig = require('lspconfig')
        local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()

        local servers = {
            'html', 'jsonls', 'rust_analyzer', 'tsserver', 'gopls', 'cssls',
        }

        lspconfig.lua_ls.setup({
            settings = {
                Lua = {
                    diagnostics = {
                        -- Get the language server to recognize the `vim` global
                        globals = { 'vim' },
                    }
                }
            }
        })

        for _, server in pairs(servers) do
            lspconfig[server].setup({
                capabilities = lsp_capabilities,
            })
        end
    end
}
