require("toggleterm").setup({
  size = 10,
  open_mapping = [[<F7>]],
  shading_factor = 1,
  shade_terminals = true,
  shading_factor = 0.5,
  start_in_insert = true,
  insert_mappings = false,
  direction = 'horizontal',
  close_on_exit = true,
  auto_scroll = true,
  -- shell = vim.o.shell,

  float_opts = {
      border = "curved",
      highlights = {
      border = "Normal",
      background = "Normal",
    },
  },
})


