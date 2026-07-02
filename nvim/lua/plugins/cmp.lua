return {
  -- Configure nvim-cmp
  {
    "hrsh7th/nvim-cmp",
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      local cmp = require("cmp")

      opts.mapping = vim.tbl_extend("force", opts.mapping, {
        -- Disable Enter (<CR>) from accepting a suggestion if you prefer
        -- it's not working
        -- ["<CR>"] = cmp.config.disable,

        -- Use Control + y to accept the suggestion
        -- it's not working
        -- ["<C-y>"] = cmp.mapping.confirm({ select = true }),

        -- Tab to accept the current selection instead of cycling
        -- it's not working
        -- ["<Tab>"] = cmp.mapping.confirm({ select = true }),
      })
    end,
  },
  {
    "saghen/blink.cmp",
    opts = {
      keymap = {
        preset = "enter", -- Keeps enter as accept, or change to 'default'

        -- If you prefer using Ctrl+j and Ctrl+k to go down/up:
        ["<C-j>"] = { "select_next", "fallback" },
        ["<C-k>"] = { "select_prev", "fallback" },
      },
    },
  },
}
