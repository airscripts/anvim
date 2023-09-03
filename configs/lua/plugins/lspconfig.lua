return {
  "neovim/nvim-lspconfig",

  config = function ()
    require"lspconfig".pylsp.setup{
      on_attach = on_attach
    }
    
    require"lspconfig".yamlls.setup{
      on_attach = on_attach
    }
    require"lspconfig".lua_ls.setup{
      on_attach = on_attach
    }
    
    require"lspconfig".dartls.setup{
      on_attach = on_attach,
      cmd = { "dart", "language-server", "--protocol=lsp" }
    }
    
    require"lspconfig".html.setup{
      on_attach = on_attach,
      capabilities = capabilities
    }
    
    require"lspconfig".vuels.setup{
      on_attach = on_attach,
      root_dir = vim.loop.cwd,
    }
    
    require"lspconfig".sqlls.setup{
      on_attach = on_attach,
      capabilities = capabilities
    }
    
    require"lspconfig".cssls.setup{
      on_attach = on_attach,
    }
    
    require"lspconfig".bashls.setup{
      on_attach = on_attach,
    }
    
    require"lspconfig".jsonls.setup{
      on_attach = on_attach,
    }
    
    require"lspconfig".dockerls.setup{
      on_attach = on_attach,
      capabilities = capabilities
    }
    
    require"lspconfig".tsserver.setup{
      on_attach = on_attach,
      root_dir = vim.loop.cwd,
    }
  end
}
