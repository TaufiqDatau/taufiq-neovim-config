return {
  "lewis6991/gitsigns.nvim",
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    on_attach = function(bufnr)
      local gsigns = package.loaded.gitsigns

      local function map(mode, l, r, desc)
        vim.keymap.set(mode, l, r, { buffer = bufnr, desc = desc })
      end

      -- Navigation
      map("n", "]h", gsigns.next_hunk, "Next Hunk")
      map("n", "[h", gsigns.prev_hunk, "Prev Hunk")

      -- Actions
      map("n", "<leader>hs", gsigns.stage_hunk, "Stage hunk")
      map("n", "<leader>hr", gsigns.reset_hunk, "Reset hunk")
      map("v", "<leader>hs", function()
        gsigns.stage_hunk({ vim.fn.line("."), vim.fn.line("v") })
      end, "Stage hunk")
      map("v", "<leader>hr", function()
        gsigns.reset_hunk({ vim.fn.line("."), vim.fn.line("v") })
      end, "Reset hunk")

      map("n", "<leader>hS", gsigns.stage_buffer, "Stage buffer")
      map("n", "<leader>hR", gsigns.reset_buffer, "Reset buffer")

      map("n", "<leader>hu", gsigns.undo_stage_hunk, "Undo stage hunk")

      map("n", "<leader>hp", gsigns.preview_hunk, "Preview hunk")

      map("n", "<leader>hb", function()
        gsigns.blame_line({ full = true })
      end, "Blame line")
      map("n", "<leader>hB", gsigns.toggle_current_line_blame, "Toggle line blame")

      map("n", "<leader>hd", gsigns.diffthis, "Diff this")
      map("n", "<leader>hD", function()
        gsigns.diffthis("~")
      end, "Diff this ~")

      -- Text object
      map({ "o", "x" }, "ih", ":<C-U>Gitsigns select_hunk<CR>", "Gitsigns select hunk")
    end,
  },
}
