local opt = {
  create_keymaps = false,
}
return {
  "andrewferrier/wrapping.nvim",
  config = function() require("wrapping").setup(opt) end,
}
