return   {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",

  config = function ()
    local treesitter_configs = require("nvim-treesitter.configs")

    treesitter_configs.setup {
      highlight = { enable = true },
      textobjects = { enable = true },
      incremental_selection = { enable = true },
    }
  end
}
