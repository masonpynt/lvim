lvim.builtin.treesitter.ensure_installed = {
  "java",
  "python",
  "javascript",
}


lvim.builtin.treesitter.rainbow = {
  enable = true,
  query = {
    "rainbow-parens",
  },
  strategy = require("ts-rainbow").strategy.global,
  hlgroups = {
    "TSRainbowBlue",
    "TSRainbowPink",
    "TSRainbowYellow",
  },
}

lvim.builtin.treesitter.autotag.enable = true
lvim.builtin.treesitter.auto_install = false

lvim.builtin.treesitter.textobjects = {
  select = {
    enable = true,
    lookahead = true,
    keymaps = {
      ["af"] = "@function.outer",
      ["if"] = "@function.inner",
      ["at"] = "@class.outer",
      ["it"] = "@class.inner",
      ["ac"] = "@call.outer",
      ["ic"] = "@call.inner",
      ["aa"] = "@parameter.outer",
      ["ia"] = "@parameter.inner",
      ["al"] = "@loop.outer",
      ["il"] = "@loop.inner",
      ["ai"] = "@conditional.outer",
      ["ii"] = "@conditional.inner",
      ["a/"] = "@comment.outer",
      ["i/"] = "@comment.inner",
      ["ab"] = "@block.outer",
      ["ib"] = "@block.inner",
      ["as"] = "@statement.outer",
      ["is"] = "@scopename.inner",
      ["aA"] = "@attribute.outer",
      ["iA"] = "@attribute.inner",
      ["aF"] = "@frame.outer",
      ["iF"] = "@frame.inner",
    },
  },
}

