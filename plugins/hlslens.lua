-----------------------------------------------------------
-- Hlslens configuration file
----------------------------------------------------------

-- Plugin: hlslens
-- url: https://github.com/kevinhwang91/nvim-hlslens

return {
  "kevinhwang91/nvim-hlslens",
  opts = function ()
    return {
      calm_down = true,
      nearest_only = true,
      nearest_float_when = 'always'
    }
  end,

  config = function()
    local kopts = {noremap = true, silent = true}

    vim.api.nvim_set_keymap('n', 'n',
      [[<Cmd>execute('normal! ' . v:count1 . 'n')<CR><Cmd>lua require('hlslens').start()<CR>]],
      kopts)
    vim.api.nvim_set_keymap('n', 'N',
      [[<Cmd>execute('normal! ' . v:count1 . 'N')<CR><Cmd>lua require('hlslens').start()<CR>]],
      kopts)
    vim.api.nvim_set_keymap('n', '*', [[*<Cmd>lua require('hlslens').start()<CR>]], kopts)
    vim.api.nvim_set_keymap('n', '#', [[#<Cmd>lua require('hlslens').start()<CR>]], kopts)
    vim.api.nvim_set_keymap('n', 'g*', [[g*<Cmd>lua require('hlslens').start()<CR>]], kopts)
    vim.api.nvim_set_keymap('n', 'g#', [[g#<Cmd>lua require('hlslens').start()<CR>]], kopts)
  end
}
