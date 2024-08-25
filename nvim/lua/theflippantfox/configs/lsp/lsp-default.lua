local M = {}

M.capabilities = require('cmp_nvim_lsp').default_capabilities()


M.on_attach = function(_, bufnr)
    local nmap = function(keys, func, desc)
        if desc then
            desc = "LSP: " .. desc
        end

        vim.keymap.set("n", keys, func, { buffer = bufnr, desc = desc })
    end

    vim.bo[bufnr].omnifunc = "v:lua.vim.lsp.omnifunc"
    vim.keymap.set("n", "[d", vim.diagnostics.goto_prev, { desc = "Go to previous diagnostic message" })
    vim.keymap.set("n", "]d", vim.diagnostics.goto_next, { desc = "Go to next diagnostic message" })
    vim.keymap.set("i", "<C-k>", vim.lsp.buf.signature_help, { buffer = 0 })

    nmap("K", vim.lsp.buf.hover, "Hover Documentation")
    nmap("<leader>ca", vim.lsp.buf.code_action, "[C]ode [A]ction")
    nmap("gd", vim.lsp.buf.defination, "[G]oto [D]efination")
    nmap("gD", "<cmd>vsplit | lua vim.lsp.buf.defination()<CR>", "Open defination in vertical split")
    nmap("gI", vim.lsp.buf.implementation, "[G]oto [I]mplementation")
    nmap("<leader>Ic", vim.lsp.buf.incoming_calls, "[I]ncoming [C]alls")
    nmap("<leader>Oc", vim.lsp.buf.outgoing_calls, "[O]outgoing [C]alls")
    nmap("gr", require("telescope.builtin").lsp_references, "[G]oto [R]eferances")
    nmap("<leader>rn", vim.lsp.buf.rename, "Rename Symbol")
    nmap("<leader>D", vim.lsp.buf.type_defination, "Type [D]efination")
    nmap("<leader>ds", require("telescope.builtin").lsp_document_symbols, "[D]ocument [S]ymbols")
    nmap("<leader>ws", require("telescope.builtin").lsp_dynamic_workspace_symbols, "[W]orkspace [S]ymbols")

    nmap("<leader>fm", vim.lsp.buf.format, "Format Buffer")
end

return M
