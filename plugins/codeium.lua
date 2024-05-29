return {
  -- "github/copilot.vim",
  -- event = "InsertEnter",
  -- build = ":Copilot auth",
  -- autoStart = true,
  "Exafunction/codeium.vim",
  enabled = false,
  -- cmd = "Codeium",
  -- build = ":Codeium Auth",
  event = "BufEnter",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "hrsh7th/nvim-cmp",
    {
      "zbirenbaum/copilot-cmp",
      config = function ()
        require("copilot_cmp").setup()
      end
    },
  },
  config = function()
    -- Change '<C-g>' here to any keycode you like.
    vim.keymap.set('i', '<M-l>', function () return vim.fn['codeium#Accept']() end, { expr = true, silent = true })
    vim.keymap.set('i', '<M-]>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true, silent = true })
    vim.keymap.set('i', '<M-[]>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true, silent = true })
    vim.keymap.set('i', '<C-]>', function() return vim.fn['codeium#Clear']() end, { expr = true, silent = true })
  end,
}
