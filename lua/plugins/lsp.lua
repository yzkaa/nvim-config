return {
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")

            lspconfig.clangd.setup({
                cmd = {
                    "clangd",
                    "--background-index",
                    "--clang-tidy",
                    "--completion-style=detailed",
                    "--header-insertion=never",
                },
            })

            vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
            vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Go to declaration" })
            vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "Go to references" })
            vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover document" })

            vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename symbol" })
            vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })

            vim.keymap.set("n", "<leader>dd", vim.diagnostic.open_float, { desc = "Show line diagnostic" })
            vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Previous diagnostic" })
            vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Next diagnostic" })

            vim.diagnostic.config({
                virtual_text = true,
                signs = true,
                underline = true,
                update_in_insert = false,
            })
        end,
    },
}
