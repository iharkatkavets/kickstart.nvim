return {
  {
    'neovim/nvim-lspconfig',
    lazy = false,
    config = function()
      local lspconfig = require 'lspconfig'
      local lsp = vim.lsp

      local servers = {
        sourcekit = {
          filetypes = { 'swift', 'objective-c', 'objective-cpp' },
          root_dir = lspconfig.util.root_pattern('.git', 'Package.swift', 'compile_commands.json'),
        },
      }

      for server, setup in pairs(servers) do
        lspconfig[server].setup(setup)
      end
    end,
  },
}
--[[
return {
  {
    'neovim/nvim-lspconfig',
    event = { 'BufReadPre', 'BufNewFile' },
    opts = {
      servers = {
        sourcekit = {
          cmd = '/usr/bin/sourcekit-lsp',
          filetypes = { 'swift', 'objective-c', 'objective-cpp' },
          root_dir = function(filename, _)
            local util = require 'lspconfig.util'
            return util.root_pattern 'Package.swift'(filename)
          end,
          single_file_support = true,
          capabilities = {
            require('cmp_nvim_lsp').default_capabilities(),
          },
        },
      },
    },
  },
}
--]]
