return {
  {
    "leoluz/nvim-dap-go",
    dependencies = {
      "mfussenegger/nvim-dap",
    },
    ft = "go",
    config = function(_, opts)
      require("dap-go").setup(opts)
    end,
    keys = {
      {
        "<leader>db",
        function()
          require("dap").toggle_breakpoint()
        end,
        desc = "Toggle Breakpoint",
      },
      -- 2. Open Debugging Sidebar (DAP UI)
      {
        "<leader>dus",
        function()
          local widgets = require("dap.ui.widgets")
          local sidebar = widgets.sidebar(widgets.scopes)
          sidebar.open()
        end,
        desc = "Debug Sidebar (UI)",
      },
      {
        "<leader>dgg",
        function()
          require("dap").continue()
        end,
        desc = "Debug go",
      },
      {
        "<leader>dgt",
        function()
          require("dap-go").debug_test()
        end,
        desc = "Debug go test",
      },
      {
        "<leader>dgl",
        function()
          require("dap-go").debug_last()
        end,
        desc = "Debug last go test",
      },
    },
  },
}
