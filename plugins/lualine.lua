return {
  "nvim-lualine/lualine.nvim",
  enabled = false,
  event = "BufEnter",
  opts = function(_, opts)
    -- Global variable in lowercase initial, Did you miss `local` or misspell it?
    opts.options = {
      theme = 'sonokai',
    }

    -- Should use `==` for equal.
    opts.sections = {
      lualine_a = {'mode'},
      lualine_b = {'branch', 'diff'},
      lualine_c = {{ 'filename', file_status = false, path = 1 }},
      lualine_x = {'encoding', 'filetype'},
      lualine_y = {'progress'},
      lualine_z = {'location'}
    }
  end,
}

