return {
  {
    "akinsho/toggleterm.nvim",
    version = "*", -- Use the latest stable version
    config = function()
      require("toggleterm").setup({
        -- Add your preferred configuration options here
        size = 20,
        open_mapping = [[<C-t>]],
        hide_numbers = true,
        shade_filetypes = {},
        shade_terminals = true,
        shading_factor = 2,
        start_in_insert = true,
        insert_mappings = true,
        terminal_mappings = true,
        persist_size = true,
        direction = "float", -- Can be 'vertical', 'horizontal', 'tab', or 'float'
        close_on_exit = true,
        shell = vim.o.shell,
        float_opts = {
          border = "curved",
          winblend = 3,
        },
      })
    end,
  },
}
