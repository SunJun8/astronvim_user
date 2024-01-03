-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map

    -- navigate buffer tabs with `H` and `L`
    L = {
      function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Next buffer",
    },
    H = {
      function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Previous buffer",
    },

    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    ["<leader>s"] = { name = "Spectre" },
    ["<leader>g"] = { name = "LSP" },

    -- Neotree
    ["<leader>e"] = false,
    ["<F4>"] = { "<cmd>Neotree toggle<CR>", desc = "Toggle Explorer" },
    ["<leader>o"] = { "<cmd>Neotree toggle<CR>", desc = "Toggle Explorer" },
    ["<F8>"] = { "<cmd>:Files<CR>", desc = "Find files", },

    -- clangformat
    ["<leader>lm"] = { "<cmd>py3f /home/jokeo/tool/clang/tools/clang-format/clang-format.py<CR>", desc = "format cpp by clang-format" },

    -- mappings seen under group name "Buffer"
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },

    -- tables with the `name` key will be registered with which-key if it's installed
    -- quick save
    ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command

    --spectre
    ["<leader>S"] = {
      ":lua require(\'spectre\').open()<CR>",
      desc = "Open spectre search"
    },

    ["<leader>sw"] = {
      ":lua require(\'spectre\').open_visual({select_word=true})<CR>",
      desc = "Search current word"
    },

    ["<leader>sp"] = {
      "viw:lua require(\'spectre\').open_file_search()<CR>",
      desc = "Search current buffer"
    },

    -- close buffer
    ["<leader>c"] = false,
    ["<leader>x"] = {
      function() require("astronvim.utils.buffer").close() end, desc = "Close buffer"
    },
    ["<leader>X"] = {
      function() require("astronvim.utils.buffer").close(0, true) end, desc = "Force close buffer"
    },

    -- ["<leader>r"] = {
    --   ":NvimTreeRefresh<CR>",
    --   desc = "Refresh file"
    -- },
    --
    -- ["<leader>o"] = {
    --   ":NvimTreeFindFileToggle<CR>",
    --   desc = "Toggle tree at current file"
    -- },
  },

  i = {
    ["<C-s>"] = { "<C-c>:w!<CR>", desc = "Save File while insert" },  -- change description but the same command
  },

  t = {
    -- setting a mapping to false will disable it
    ["<esc>"] = false,
  },

  v = {
    ["<leader>s"] = {
      ":lua require(\'spectre\').open_visual()<CR>",
      desc = "Search current block"
    },

    -- clangformat
    ["<leader>lm"] = { "<cmd>py3f /home/jokeo/tool/clang/tools/clang-format/clang-format.py<CR>", desc = "format cpp by clang format" },
  },
}
