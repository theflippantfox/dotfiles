return {
    'neovim/nvim-lspconfig',
    dependencies = {
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
    },
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        local util = require('lspconfig/util')
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
        local def = require('theflippantfox.configs.lsp.lsp-default')

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

        lspconfig.svelte.setup {
            cmd = { "svelteserver", "--stdio" },
            filetypes = { "svelte" },
            root_dir = util.root_pattern("package.json", ".git")
        }

        for _, server in pairs(servers) do
            lspconfig[server].setup({
                capabilities = def.capabilities,
                on_attach = def.on_attach,
            })
        end
    end
}
