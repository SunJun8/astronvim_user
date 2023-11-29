-- Neotree: https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  "nvim-neo-tree/neo-tree.nvim",
  enabled = true,
  opts = function(_, opts)
    opts.filesystem = {
      filtered_items = {
        visible = true,
      },
      follow_current_file = {
        enabled = true,
      },
    }

    opts.buffers = {
      follow_current_file = {
        enabled = false,
      },
    }

    return opts
  end
}
