local colorscheme = "catppuccin"
-- local colorscheme = "gruvbox"

vim.g.catppuccin_flavour = "mocha" -- latte, frappe, macchiato, mocha

require("catppuccin").setup({
  transparent_background = true,
  term_colors = false,
  compile = {
    enabled = false,
    path = vim.fn.stdpath("cache") .. "/catppuccin",
  },
  dim_inactive = {
    enabled = false,
    shade = "dark",
    percentage = 0.15,
  },
  styles = {
    comments = { "italic" },
    conditionals = {},
    loops = {},
    functions = { "bold" },
    keywords = {},
    strings = {},
    variables = {},
    numbers = {},
    booleans = {},
    properties = {},
    types = { "bold" },
    operators = {},
  },
  integrations = {
    ts_rainbow = true,
    telescope = true,
    gitsigns = true,
    treesitter = true,
    cmp = true,
    nvimtree = true,
    neogit = true
  },
  color_overrides = {},
  highlight_overrides = {},
})

local c = require('vscode.colors')
require('vscode').setup({
  -- Enable transparent background
  transparent = true,

  -- Enable italic comment
  italic_comments = true,

  -- Disable nvim-tree background color
  disable_nvimtree_bg = true,

  -- Override colors (see ./lua/vscode/colors.lua)
  color_overrides = {
    vscLineNumber = '#FFFFFF',
  },

  -- Override highlight groups (see ./lua/vscode/theme.lua)
  group_overrides = {
    -- this supports the same val table as vim.api.nvim_set_hl
    -- use colors from this colorscheme by requiring vscode.colors!
    Cursor = { fg = c.vscDarkBlue, bg = c.vscLightGreen, bold = true },
  }
})

local dracula = require("dracula")
dracula.setup({
  -- customize dracula color palette
  colors = {
    bg = "#282A36",
    fg = "#F8F8F2",
    selection = "#44475A",
    comment = "#6272A4",
    red = "#FF5555",
    orange = "#FFB86C",
    yellow = "#F1FA8C",
    green = "#50fa7b",
    purple = "#BD93F9",
    cyan = "#8BE9FD",
    pink = "#FF79C6",
    bright_red = "#FF6E6E",
    bright_green = "#69FF94",
    bright_yellow = "#FFFFA5",
    bright_blue = "#D6ACFF",
    bright_magenta = "#FF92DF",
    bright_cyan = "#A4FFFF",
    bright_white = "#FFFFFF",
    menu = "#21222C",
    visual = "#3E4452",
    gutter_fg = "#4B5263",
    nontext = "#3B4048",
  },
  -- show the '~' characters after the end of buffers
  show_end_of_buffer = true, -- default false
  -- use transparent background
  transparent_bg = true, -- default false
  -- set custom lualine background color
  lualine_bg_color = "#44475a", -- default nil
  -- set italic comment
  italic_comment = true, -- default false
  -- overrides the default highlights see `:h synIDattr`
  overrides = {
    -- Examples
    -- NonText = { fg = dracula.colors().white }, -- set NonText fg to white
    -- NvimTreeIndentMarker = { link = "NonText" }, -- link to NonText highlight
    -- Nothing = {} -- clear highlight of Nothing
  },
})

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end
