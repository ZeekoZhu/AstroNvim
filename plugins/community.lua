return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

   -- { import = "astrocommunity.colorscheme.catppuccin" },
   { import = "astrocommunity.completion.copilot-lua" },
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
   { -- further customize the options set by the community
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
       }
     },
  },

}
