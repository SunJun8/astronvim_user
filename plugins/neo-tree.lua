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
  end,

  -- config = function(_, opts)
  --   local utils = require "astronvim.utils"
  --   local get_icon = utils.get_icon
  --
  --   opts.sources = { "filesystem" }
  --   opts.source_selector = {
  --     winbar = true,
  --     content_layout = "center",
  --     sources = {
  --       { source = "filesystem", display_name = get_icon("FolderClosed", 1, true) .. "File" }
  --     }
  --   }
  -- end
}
