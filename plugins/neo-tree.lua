-- Neotree: https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  "nvim-neo-tree/neo-tree.nvim",
  enabled = true,
  opts = function(_, opts)
    local utils = require "astronvim.utils"
    local get_icon = utils.get_icon

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

    -- opts.sources = { "filesystem" }
    opts.source_selector = {
      winbar = false,
      content_layout = "center",
      sources = {
        { source = "filesystem", display_name = get_icon("FolderOpen", 1, true) .. "File" }
      }
    }

    return opts
  end,
}
