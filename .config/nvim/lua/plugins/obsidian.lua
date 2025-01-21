return {
  "epwalsh/obsidian.nvim",
  version = "*",
  lazy = true,
  ft = "markdown",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
    workspaces = {
      {
        name = "ObsidianVault",
        path = "~/ObsidianVault",
      },
    },
    mappings = {},
    templates = {
      folder = "Templates",
      date_format = "%A | %B %d, %Y",
      time_format = "%I:%M %p",
      substitutions = {},
    },
    follow_url_func = function(url)
      vim.fn.jobstart { "open", url }
    end,
  },
  keys = {
    {
      "<leader>oc",
      "<cmd>ObsidianToggleCheckbox<cr>",
      desc = "Obsidian Toggle Checkbox",
    },
    {
      "<leader>of",
      "<cmd>ObsidianFollowLink<cr>",
      desc = "Obsidian Follow Link",
    },
    {
      "<leader>ol",
      "<cmd>ObsidianLinks<cr>",
      desc = "Obsidian Links",
    },
    {
      "<leader>ot",
      "<cmd>ObsidianTemplate<cr>",
      desc = "Obsidian Template",
    },
  },
}
