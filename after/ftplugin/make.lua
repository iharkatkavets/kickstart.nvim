-- Disable expandtab for Makefiles
vim.opt_local.expandtab = false
vim.opt_local.tabstop = 4 -- Set tab width to 4 spaces
vim.opt_local.shiftwidth = 4 -- Set indentation level to 4 spaces
-- Forcefully disable expandtab even after sleugh sets its own settings
-- vim.defer_fn(function()
--   vim.opt_local.expandtab = false
-- end, 0)
