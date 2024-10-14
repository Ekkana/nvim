return {
	"sindrets/diffview.nvim",
	config = function()
		vim.keymap.set("n", "<leader>do", ":DiffviewOpen<CR>", { desc = "[D]iff [O]pen" })
		vim.keymap.set("n", "<leader>dc", ":DiffviewClose<CR>", { desc = "[D]iff [C]lose" })
	end,
}
