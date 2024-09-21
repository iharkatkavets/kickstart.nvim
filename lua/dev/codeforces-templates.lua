return {
  {
    -- Specify the local plugin by its directory path
    dir = '~/developer/nvim-plugins/codeforces-templates.nvim',
    config = function()
      -- Configuration for your plugin goes here
      require('codeforces-templates').setup {
        -- plugin options
      }
    end,
    lazy = false,
  },
}
