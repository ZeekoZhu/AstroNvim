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
  { import = "astrocommunity.motion.flash-nvim" },
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    dependencies = {
      {
        "AstroNvim/astrocore",
        opts = {
          mappings = {
            x = {
              ["f"] = {
                function() require("flash").jump() end,
                desc = "Flash",
              },
              ["R"] = {
                function() require("flash").treesitter_search() end,
                desc = "Treesitter Search",
              },
              ["F"] = {
                function() require("flash").treesitter() end,
                desc = "Flash Treesitter",
              },
            },
            o = {
              ["r"] = {
                function() require("flash").remote() end,
                desc = "Remote Flash",
              },
              ["R"] = {
                function() require("flash").treesitter_search() end,
                desc = "Treesitter Search",
              },
              ["s"] = {
                function() require("flash").jump() end,
                desc = "Flash",
              },
              ["S"] = {
                function() require("flash").treesitter() end,
                desc = "Flash Treesitter",
              },
            },
            n = {
              ["f"] = {
                function() require("flash").jump() end,
                desc = "Flash",
              },
              ["F"] = {
                function() require("flash").treesitter() end,
                desc = "Flash Treesitter",
              },
            },
          },
        },
      },
    },
    opts = {
      modes = {
        char = {
          enabled = false,
        },
      },
    },
  },
  { import = "astrocommunity.completion.codeium-nvim" },
  {
    "codeium.nvim",
    opts = {
      enable_cmp_source = false,
      virtual_text = {
        enabled = true,
        default_filetype_enabled = true,
        key_bindings = {
          accept = "<C-f>",
          next = "<C-.>",
          prev = "<C-,>",
          clear = "<C/>",
        }
      },
    },
  }
}
