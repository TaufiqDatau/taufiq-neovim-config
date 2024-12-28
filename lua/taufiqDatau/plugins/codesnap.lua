return {
  "mistricky/codesnap.nvim",
  build = "make build_generator",
  config = function()
    -- Configure the plugin
    require("codesnap").setup({
      save_path = "~/Desktop",
      watermark = "Taufiq Datau",
    })

    -- Keymaps
    local keymap = vim.keymap
    keymap.set("x", "<leader>cc", ":<C-u>CodeSnap<CR>", { desc = "CodeSnap in visual mode" })
    keymap.set("x", "<leader>cs", ":<C-u>CodeSnapSave<CR>", { desc = "Save selected code snapshot" })
  end,
}
