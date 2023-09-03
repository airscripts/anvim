return {
  "rcarriga/nvim-dap-ui",
  dependencies = { "mfussenegger/nvim-dap" },

  config = function ()
    local dapui = require("dapui")

    dapui.setup({
      windows = { indent = 1 },
      expand_lines = vim.fn.has("nvim-0.7"),

      icons = {
        expanded = "▾",
        collapsed = "▸",
        current_frame = "▸"
      },

      mappings = {
        open = "o",
        edit = "e",
        repl = "r",
        toggle = "t",
        remove = "d",
        expand = { "<CR>", "<2-LeftMouse>" },
      },

      layouts = {
        {
          size = 40,
          position = "left",

          elements = {
            "stacks",
            "watches",
            "breakpoints",
            { id = "scopes", size = 0.25 },
          },
        },

        {
          size = 0.25,
          position = "bottom",

          elements = {
            "repl",
            "console",
          },
        },
      },

      controls = {
        enabled = true,
        element = "repl",

        icons = {
          play = "",
          pause = "",
          step_out = "",
          run_last = "↻",
          step_into = "",
          step_over = "",
          step_back = "",
          terminate = "□",
        },
      },

      floating = {
        max_width = nil,
        max_height = nil,
        border = "single",

        mappings = {
          close = { "q", "<Esc>" },
        },
      },

      render = {
        max_type_length = nil,
        max_value_lines = 100,
      }
    })

    local dap = require("dap")

    dap.listeners.after.event_initialized["dapui_config"] = function()
      dapui.open()
    end

    dap.listeners.before.event_terminated["dapui_config"] = function()
      dapui.close()
    end

    dap.listeners.before.event_exited["dapui_config"] = function()
      dapui.close()
    end
  end
}
