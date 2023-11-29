return {
  "rebelot/heirline.nvim",
  opts = function(_, opts)
    local status = require("astronvim.utils.status")
    local provider = require("astronvim.utils.status.provider")
    opts.statusline = { -- statusline
      hl = { fg = "fg", bg = "bg" },
      status.component.mode { mode_text = { padding = { left = 1, right = 1 } } }, -- add the mode text
      status.component.git_branch(),
      status.component.file_info {
        -- enable the file_icon and disable the highlighting based on filetype
        file_icon = { padding = { left = 0 } },
        filename = {
          fname = function ()
            return provider.filename()(self)
          end,
          fallback = "Empty" },
        -- add padding
        padding = { right = 1 },
        -- define the section separator
        surround = { separator = "left", condition = false },
      },
      status.component.git_diff(),
      status.component.diagnostics(),
      status.component.fill(),
      status.component.cmd_info(),
      status.component.fill(),
      status.component.lsp(),
      status.component.treesitter(),
      status.component.nav(),
      -- remove the 2nd mode indicator on the right
    }

    -- return the final configuration table
    return opts
  end,
}
