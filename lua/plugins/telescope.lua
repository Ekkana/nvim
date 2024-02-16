return {
  "telescope.nvim",
  dependencies = {
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
    },

    {
      "nvim-telescope/telescope-live-grep-args.nvim",
      -- This will not install any breaking changes.
      -- For major updates, this must be adjusted manually.
      version = "^1.0.0",
    },
  },
  config = function()
    local telescope = require("telescope")
    telescope.load_extension("fzf")
    telescope.load_extension("live_grep_args")
    telescope.setup({
      defaults = {
        layout_strategy = "vertical",
        layout_config = { height = 0.95, prompt_position = "top", mirror = true },
      },
    })
  end,
}
