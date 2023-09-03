return {
  "mfussenegger/nvim-dap",

  config = function()
    local dap = require("dap")

    dap.adapters.python = {
      type = "executable";
      args = { "-m", "debugpy.adapter" };
      command = "/home/airscript/.local/share/nvim/mason/packages/debugpy/venv/bin/python";
    }

    dap.configurations.python = {
      {
        type = "python";
        request = "launch";
        program = "${file}";
        name = "Launch file";

        pythonPath = function()
          return "/usr/bin/python"
        end;
      },
    }
  end
}
