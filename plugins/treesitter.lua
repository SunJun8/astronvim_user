return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = "p00f/nvim-ts-rainbow",
  opts = function(_, opts)
    -- add more things to the ensure_installed table protecting against community packs modifying it
    opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
      "c",
      "cpp",
      "python",
      "markdown",
      "make",
      "cmake",
      "ninja",
      "go",
      "html",
      "rust",
      "vim",
      "lua",
    })

  end,
}
