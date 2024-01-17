return {
  -- customize alpha options
  {
    "goolord/alpha-nvim",
    opts = function(_, opts)
      local dashboard = require "alpha.themes.dashboard"

      -- customize the dashboard header
      opts.section.header.val = {
        "██   ██ ███    ██  ██████  ██     ██ ██      ███████ ██████   ██████  ███████      █████  ███████      █████   ██████ ████████ ██  ██████  ███    ██",
        "██  ██  ████   ██ ██    ██ ██     ██ ██      ██      ██   ██ ██       ██          ██   ██ ██          ██   ██ ██         ██    ██ ██    ██ ████   ██",
        "█████   ██ ██  ██ ██    ██ ██  █  ██ ██      █████   ██   ██ ██   ███ █████       ███████ ███████     ███████ ██         ██    ██ ██    ██ ██ ██  ██",
        "██  ██  ██  ██ ██ ██    ██ ██ ███ ██ ██      ██      ██   ██ ██    ██ ██          ██   ██      ██     ██   ██ ██         ██    ██ ██    ██ ██  ██ ██",
        "██   ██ ██   ████  ██████   ███ ███  ███████ ███████ ██████   ██████  ███████     ██   ██ ███████     ██   ██  ██████    ██    ██  ██████  ██   ████",
      }

      local button, get_icon = require("astronvim.utils").alpha_button, require("astronvim.utils").get_icon
      opts.section.buttons.val = {
        dashboard.button("e", "  New file", "<cmd>ene<CR>"),
        dashboard.button("f", "  Find file", "<cmd>Files<CR>"),
        dashboard.button("r", "  Recent file" , "<cmd>Telescope oldfiles<CR>"),
        dashboard.button("u", "  Update plugins" , "<cmd>Lazy update<CR>"),
        dashboard.button("q", "  Quit" , "<cmd>qa<CR>"),
      }
      return opts
    end,
  },
}
