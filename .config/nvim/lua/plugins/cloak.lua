return {
  "laytan/cloak.nvim",
  event = { "BufReadPre", "BufNewFile" },
  cmd = { "CloakToggle", "CloakPreviewLine" },
  opts = {
    enabled = true,
    cloak_character = "*",
    cloak_length = 8,
    patterns = {
      {
        file_pattern = ".env*",
        cloak_pattern = "=.+",
      },
    },
  },
}
