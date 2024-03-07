return {
    {

        "williamboman/mason.nvim",
        lazy = false,

        config = function()
            require("mason").setup({
              ensure_installed = {'typescript-language-server'}
            })
        end,
    },

  -- lsp servers

    {

        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "tsserver","rust_analyzer", "marksman", "taplo" },
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        lazy = false,
        config = function()
            local lspconfig = require("lspconfig")
            lspconfig.tsserver.setup({})
            lspconfig.lua_ls.setup({})
        end,
    },
}
