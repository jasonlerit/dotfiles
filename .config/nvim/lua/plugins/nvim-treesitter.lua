return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "lua",
      "html",
      "css",
      "javascript",
      "typescript",
      "tsx",
    },
  },
  highlight = {
    enable = true,
    use_languagetree = true,
  },
}
