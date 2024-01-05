return {
  {
    "sourcegraph/sg.nvim",
    enabled = false,
    dependencies = { "nvim-lua/plenary.nvim" },
    -- If you have a recent version of lazy.nvim, you don't need to add this!
    build = "nvim -l build/init.lua",
    event = "InsertEnter",
    autoStart = true,
    opts = {
      -- Pass your own custom attach function
      --    If you do not pass your own attach function, then the following maps are provide:
      --        - gd -> goto definition
      --        - gr -> goto references
      -- on_attach = your_custom_lsp_attach_function
    }
  },
}
