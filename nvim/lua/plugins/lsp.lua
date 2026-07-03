-- lua/plugins/lsp.lua
return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      ["*"] = {
        keys = {
          { "K", false }, -- Disables LazyVim's default K mapping
        },
      },
    },
    inlay_hints = {
      enabled = false,
    },
  },
}
