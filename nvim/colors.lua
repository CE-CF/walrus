---@diagnostic disable: undefined-global

local palette = {
    -- Walrus body and background
    beige_light   = "#cfc4a6",
    beige         = "#cec3a5",
    beige_neutral = "#cfc3a5",
    beige_desat   = "#cdc2a3",
    beige_green   = "#cfc3a5",
    white         = "#ffffff",
    near_white    = "#fffffe",
    dark_taupe    = "#565246",
    deep_brown    = "#3f3b34",
    near_black    = "#2b2823",

    -- Diet/environment accents
    seagrass      = "#5c6d50",
    kelp          = "#5b6f48",
    clam_shell    = "#94715e",  -- #94715e
    sand_dollar   = "#d2bfa5",
    crab_brown    = "#8c6f5d",
    crab_red      = "#a34d3f",
    squid         = "#b56982"
}

vim.cmd("highlight clear")
vim.cmd("set termguicolors")

-- UI
vim.api.nvim_set_hl(0, "Normal",        { fg = palette.dark_taupe, bg = palette.beige_light })
vim.api.nvim_set_hl(0, "NormalFloat",   { fg = palette.deep_brown, bg = palette.sand_dollar })
vim.api.nvim_set_hl(0, "CursorLine",    { bg = palette.beige })
vim.api.nvim_set_hl(0, "Visual",        { bg = palette.beige_desat })
vim.api.nvim_set_hl(0, "LineNr",        { fg = palette.beige_green })
vim.api.nvim_set_hl(0, "CursorLineNr",  { fg = palette.near_black, bold = true })
vim.api.nvim_set_hl(0, "VertSplit",     { fg = palette.beige_neutral })
vim.api.nvim_set_hl(0, "Pmenu",         { fg = palette.deep_brown, bg = palette.beige })
vim.api.nvim_set_hl(0, "PmenuSel",      { fg = palette.white, bg = palette.near_black })

-- Syntax (max contrast)
vim.api.nvim_set_hl(0, "Delimiter",     { fg = palette.deep_brown })
vim.api.nvim_set_hl(0, "Special",       { fg = palette.crab_brown })  
vim.api.nvim_set_hl(0, "Comment",       { fg = palette.seagrass, italic = true })
vim.api.nvim_set_hl(0, "String",        { fg = palette.kelp })
vim.api.nvim_set_hl(0, "Keyword",       { fg = palette.crab_red, bold = true })
vim.api.nvim_set_hl(0, "Function",      { fg = palette.crab_red, bold = true })
vim.api.nvim_set_hl(0, "Identifier",    { fg = palette.squid })
vim.api.nvim_set_hl(0, "Type",          { fg = palette.crab_red, bold = true })
vim.api.nvim_set_hl(0, "Number",        { fg = palette.crab_brown })
vim.api.nvim_set_hl(0, "Boolean",       { fg = palette.crab_red })
vim.api.nvim_set_hl(0, "Operator",      { fg = palette.deep_brown })
vim.api.nvim_set_hl(0, "Delimiter",     { fg = palette.deep_brown }) -- punctuation, braces, etc.

-- Diagnostics
vim.api.nvim_set_hl(0, "DiagnosticError", { fg = palette.crab_red, underline = true })
vim.api.nvim_set_hl(0, "DiagnosticWarn",  { fg = palette.clam_shell, underline = true })
vim.api.nvim_set_hl(0, "DiagnosticInfo",  { fg = palette.seagrass, underline = true })
vim.api.nvim_set_hl(0, "DiagnosticHint",  { fg = palette.near_white, underline = true })

-- LSP references
vim.api.nvim_set_hl(0, "LspReferenceText",  { bg = palette.beige })
vim.api.nvim_set_hl(0, "LspReferenceRead",  { bg = palette.beige })
vim.api.nvim_set_hl(0, "LspReferenceWrite", { bg = palette.beige })

-- Search and matches
vim.api.nvim_set_hl(0, "Search",        { fg = palette.white, bg = palette.kelp })
vim.api.nvim_set_hl(0, "IncSearch",     { fg = palette.white, bg = palette.beige_neutral })

-- Tabline / Statusline (keep your favorite)
vim.api.nvim_set_hl(0, "TabLine",       { fg = palette.clam_shell, bg = palette.beige })
vim.api.nvim_set_hl(0, "TabLineSel",    { fg = palette.white, bg = palette.dark_taupe })
vim.api.nvim_set_hl(0, "TabLineFill",   { bg = palette.beige })
vim.api.nvim_set_hl(0, "StatusLine",    { fg = palette.white, bg = palette.dark_taupe })
vim.api.nvim_set_hl(0, "StatusLineNC",  { fg = palette.beige_desat, bg = palette.deep_brown })

vim.api.nvim_set_hl(0, "@variable",         { fg = palette.clam_shell }) -- locals like palette
vim.api.nvim_set_hl(0, "@variable.builtin", { fg = palette.crab_red })   -- globals like vim

local walrus_lualine = {
  normal = { a = { fg = palette.white, bg = palette.crab_brown, bold = true },
             b = { fg = palette.beige_light, bg = palette.deep_brown },
             c = { fg = palette.dark_taupe, bg = palette.sand_dollar },
             x = { fg = palette.kelp, bg = palette.sand_dollar },
             y = { fg = palette.beige_neutral, bg = palette.deep_brown },
             z = { fg = palette.white, bg = palette.crab_brown, bold = true } },
  insert = { a = { fg = palette.white, bg = palette.seagrass, bold = true },
             b = { fg = palette.beige_light, bg = palette.deep_brown },
             c = { fg = palette.dark_taupe, bg = palette.sand_dollar },
             x = { fg = palette.kelp, bg = palette.sand_dollar },
             y = { fg = palette.beige_neutral, bg = palette.deep_brown },
             z = { fg = palette.white, bg = palette.seagrass, bold = true } },
  visual = { a = { fg = palette.white, bg = palette.crab_red, bold = true },
             b = { fg = palette.beige_light, bg = palette.deep_brown },
             c = { fg = palette.dark_taupe, bg = palette.sand_dollar },
             x = { fg = palette.kelp, bg = palette.sand_dollar },
             y = { fg = palette.beige_neutral, bg = palette.deep_brown },
             z = { fg = palette.white, bg = palette.crab_red, bold = true } },
  replace = { a = { fg = palette.white, bg = palette.kelp, bold = true },
              b = { fg = palette.beige_light, bg = palette.deep_brown },
              c = { fg = palette.dark_taupe, bg = palette.sand_dollar },
              x = { fg = palette.kelp, bg = palette.sand_dollar },
              y = { fg = palette.beige_neutral, bg = palette.deep_brown },
              z = { fg = palette.white, bg = palette.kelp, bold = true } },
  command = { a = { fg = palette.white, bg = palette.crab_brown, bold = true },
              b = { fg = palette.beige_light, bg = palette.deep_brown },
              c = { fg = palette.dark_taupe, bg = palette.sand_dollar },
              x = { fg = palette.kelp, bg = palette.sand_dollar },
              y = { fg = palette.beige_neutral, bg = palette.deep_brown },
              z = { fg = palette.white, bg = palette.crab_brown, bold = true } },
  inactive = { a = { fg = palette.beige_light, bg = palette.deep_brown },
               b = { fg = palette.beige_neutral, bg = palette.deep_brown },
               c = { fg = palette.dark_taupe, bg = palette.sand_dollar } },
}

require('lualine').setup {
  options = {
    theme = walrus_lualine,
    section_separators = { left = '', right = '' },
    component_separators = { left = '', right = '' },
    globalstatus = true,
  },
}
