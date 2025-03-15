return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        lazy = false,
        init = function()
            vim.cmd.colorscheme("catppuccin")
        end,
        config = function()
            require("catppuccin").setup({
                -- transparent_background = true,
                -- colorscheme = "dark_catppuccino",
            })
        end,
    },
}
-- return { -- You can easily change to a different colorscheme.
-- 	-- Change the name of the colorscheme plugin below, and then
-- 	-- change the command in the config to whatever the name of that colorscheme is.
-- 	--
-- 	-- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
-- 	"folke/tokyonight.nvim",
-- 	priority = 1000, -- Make sure to load this before all the other start plugins.
-- 	init = function()
-- 		-- Load the colorscheme here.
-- 		-- Like many other themes, this one has different styles, and you could load
-- 		-- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
-- 		vim.cmd.colorscheme("tokyonight-night")
--
-- 		-- You can configure highlights by doing something like:
-- 		vim.cmd.hi("Comment gui=none")
-- 	end,
-- }
--
-- return {
-- 	"Mofiqul/vscode.nvim",
-- 	priority = 1000,
-- 	init = function()
-- 		vim.cmd.colorscheme("vscode")
-- 	end,
-- 	config = function()
-- 		require("vscode").setup({
-- 			-- Alternatively set style in setup
-- 			-- style = 'light'
--
-- 			-- Enable transparent background
-- 			transparent = false,
-- 		})
-- 		vim.keymap.set("n", "<leader>td", ":lua require('vscode').load('dark')<CR>", { desc = "[T]heme [D]ark" })
-- 		vim.keymap.set("n", "<leader>tl", ":lua require('vscode').load('light')<CR>", { desc = "[T]heme [L]ight" })
-- 	end,
-- }
-- return {
-- 	"craftzdog/solarized-osaka.nvim",
-- 	priority = 1000,
-- 	lazy = false,
-- 	init = function()
-- 		vim.cmd.colorscheme("solarized-osaka")
-- 	end,
-- 	config = function() end,
-- }
--
