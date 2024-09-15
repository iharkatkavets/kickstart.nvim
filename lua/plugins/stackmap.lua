return {
  {
    -- Specify the local plugin by its directory path
    dir = '~/developer/nvim-plugins/stackmap.nvim',
    config = function()
      -- Configuration for your plugin goes here
      require('stackmap').setup {
        -- plugin options
      }
    end,
  },
}
