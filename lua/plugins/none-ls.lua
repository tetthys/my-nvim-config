return {
    "nvimtools/none-ls.nvim",
    dependencies = {
        "nvimtools/none-ls-extras.nvim",
    },
    config = function()
        local null_ls = require("null-ls")

        null_ls.setup({
            sources = {
                null_ls.builtins.formatting.stylua,
                null_ls.builtins.completion.spell,
                require("none-ls.diagnostics.eslint_d"),
                null_ls.builtins.formatting.prettier,
                null_ls.builtins.diagnostics.phpcs, -- php
                null_ls.builtins.formatting.phpcsfixer,
            },
        })

        vim.keymap.set("n", "<leader>gf", function()
            vim.lsp.buf.format({ async = true })
        end, {})
    end,
}
