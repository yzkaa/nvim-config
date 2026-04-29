return {
    {
        "akinsho/toggleterm.nvim",
        version = "*",
        config = function()
            require("toggleterm").setup({
                size = 15,
                direction = "horizontal",
                close_on_exit = false,
                shell = vim.o.shell,
            })

            local Terminal = require("toggleterm.terminal").Terminal

            local project_term = Terminal:new({
                direction = "horizontal",
                size = 15,
                close_on_exit = false,
                hidden = true,
                dir = "git_dir",
            })

            local codex_term = Terminal:new({
                cmd = "codex",
                direction = "vertical",
                size = 60,
                close_on_exit = false,
                hidden = true,
                dir = "git_dir",
            })

            vim.keymap.set("n", "<leader>tt", function()
                project_term:toggle()
            end, { desc = "Toggle project terminal" })

            vim.keymap.set("n", "<leader>ai", function()
                codex_term:toggle()
            end, { desc = "Toggle Codex" })

            vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { desc = "Terminal normal mode" })
            -- 窗口大小调整
            vim.keymap.set("n", "<leader>wh", "<cmd>vertical resize -5<CR>", { desc = "Decrease window width" })
            vim.keymap.set("n", "<leader>wl", "<cmd>vertical resize +5<CR>", { desc = "Increase window width" })
            vim.keymap.set("n", "<leader>wj", "<cmd>resize -3<CR>", { desc = "Decrease window height" })
            vim.keymap.set("n", "<leader>wk", "<cmd>resize +3<CR>", { desc = "Increase window height" })
        end,
    },
}
