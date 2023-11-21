  return {
    {
      "ojroques/nvim-lspfuzzy",
      dependencies = {
        {
          "junegunn/fzf",
          event = "BufEnter",
        },
        {
          "junegunn/fzf.vim",
          event = "BufEnter",
        }
      },
      event = "BufEnter",
    },

  }
