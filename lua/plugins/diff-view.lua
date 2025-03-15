vim.api.nvim_create_user_command("DiffviewFileHistoryCurrent", function()
    local filepath = vim.fn.expand("%:p") -- Get the full path of the current buffer
    if filepath == "" then
        print("No file to show history for")
        return
    end
    vim.cmd("DiffviewFileHistory " .. filepath)
end, {})

return {
    "sindrets/diffview.nvim",
    config = function()
        vim.keymap.set("n", "<leader>do", ":DiffviewOpen<CR>", { desc = "[D]iff [O]pen" })
        vim.keymap.set("n", "<leader>dc", ":DiffviewClose<CR>", { desc = "[D]iff [C]lose" })
        vim.keymap.set(
            "n",
            "<leader>df",
            ":DiffviewFileHistoryCurrent<CR>",
            { desc = "[D]iff [F]iles" }
        )
    end,
}
