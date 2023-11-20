return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "sainnhe/sonokai",
    init = function()
      vim.g.sonokai_style = 'espresso'
      vim.g.sonokai_dim_inactive_windows = 0
      vim.g.sonokai_enable_italic = false
      vim.g.sonokai_disable_italic_comment = true
      vim.g.sonokai_transparent_background = false
      vim.g.sonokai_diagnostic_text_highlight = false
    end,
  },

  {
    "ojroques/nvim-lspfuzzy"
  },
}
