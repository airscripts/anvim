return {
  "RRethy/vim-illuminate",

  config = function ()
    require("illuminate").configure({
      delay = 100,
      under_cursor = true,
      modes_denylist = {},
      modes_allowlist = {},
      large_file_cutoff = nil,
      filetype_overrides = {},
      filetypes_allowlist = {},
      large_file_overrides = nil,
      providers_regex_syntax_denylist = {},
      providers_regex_syntax_allowlist = {},

      providers = {
        "lsp",
        "treesitter",
        "regex",
      },

      filetypes_denylist = {
        "dirvish",
        "fugitive",
      },
    })
  end
}
