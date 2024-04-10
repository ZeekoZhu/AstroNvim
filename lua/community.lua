-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  -- import/override with your plugins folder
  { import = "astrocommunity.media.vim-wakatime" },
  { import = "astrocommunity.motion.nvim-surround" },
  { import = "astrocommunity.motion.hop-nvim" },
  {
    "phaazon/hop.nvim",
    opts = {},
    keys = {
      {
        "f",
        function() require("hop").hint_words() end,
        mode = { "n" },
        desc = "Hop hint words",
      },
      {
        "<S-f>",
        function() require("hop").hint_lines() end,
        mode = { "n" },
        desc = "Hop hint lines",
      },
      {
        "f",
        function() require("hop").hint_words { extend_visual = true } end,
        mode = { "v" },
        desc = "Hop hint words",
      },
      {
        "<S-f>",
        function() require("hop").hint_lines { extend_visual = true } end,
        mode = { "v" },
        desc = "Hop hint lines",
      },
    },
  },
  { import = "astrocommunity.completion.copilot-lua" },
  {
    "copilot.lua",
    opts = {
      suggestion = {
        keymap = {
          accept = "<C-f>",
          accept_word = false,
          accept_line = false,
          next = "<C-.>",
          prev = "<C-,>",
          dismiss = "<C/>",
        },
      },
      filetypes = {
        yaml = true,
        markdown = true,
        json = true,
      },
    },
  },
}
