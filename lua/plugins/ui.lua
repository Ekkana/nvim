return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "vscode",
    },
    -- opts = {
    --   colorscheme = "solarized-osaka",
    -- },
  },

  {
    "Mofiqul/vscode.nvim",

    config = function()
      require("vscode").setup({
        -- Alternatively set style in setup
        -- style = 'light'

        -- Enable transparent background
        transparent = false,
      })
      vim.keymap.set("n", "<leader>td", ":lua require('vscode').load('dark')<CR>")
      vim.keymap.set("n", "<leader>tl", ":lua require('vscode').load('light')<CR>")
    end,
  },
  -- {
  --   "craftzdog/solarized-osaka.nvim",
  --   -- lazy = true,
  --   -- priority = 1000,
  --   opts = {
  --     transparent = true,
  --   },
  -- },
  -- {
  --   "folke/tokyonight.nvim",
  --   opts = {
  --     -- transparent = true,
  --     styles = {
  --       -- sidebars = "transparent",
  --       -- floats = "transparent",
  --       keywords = { italic = false },
  --     },
  --   },
  -- },
  -- -- add gruvbox
  -- { "ellisonleao/gruvbox.nvim" },
  --
  -- -- messages, cmdline and the popupmenu
  -- {
  --   "folke/noice.nvim",
  --   opts = function(_, opts)
  --     table.insert(opts.routes, {
  --       filter = {
  --         event = "notify",
  --         find = "No information available",
  --       },
  --       opts = { skip = true },
  --     })
  --     local focused = true
  --     vim.api.nvim_create_autocmd("FocusGained", {
  --       callback = function()
  --         focused = true
  --       end,
  --     })
  --     vim.api.nvim_create_autocmd("FocusLost", {
  --       callback = function()
  --         focused = false
  --       end,
  --     })
  --     table.insert(opts.routes, 1, {
  --       filter = {
  --         cond = function()
  --           return not focused
  --         end,
  --       },
  --       view = "notify_send",
  --       opts = { stop = false },
  --     })
  --
  --     opts.commands = {
  --       all = {
  --         -- options for the message history that you get with `:Noice`
  --         view = "split",
  --         opts = { enter = true, format = "details" },
  --         filter = {},
  --       },
  --     }
  --
  --     vim.api.nvim_create_autocmd("FileType", {
  --       pattern = "markdown",
  --       callback = function(event)
  --         vim.schedule(function()
  --           require("noice.text.markdown").keys(event.buf)
  --         end)
  --       end,
  --     })
  --
  --     opts.presets.lsp_doc_border = true
  --   end,
  -- },
  -- {
  --   "rcarriga/nvim-notify",
  --   opts = {
  --     timeout = 5000,
  --   },
  -- },
  -- -- animations
  -- {
  --   "echasnovski/mini.animate",
  --   event = "VeryLazy",
  --   opts = function(_, opts)
  --     opts.scroll = {
  --       enable = false,
  --     }
  --   end,
  -- },
}
