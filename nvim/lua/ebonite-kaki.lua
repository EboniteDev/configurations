local colors = {
  bg = "#000000",
  fg = "#ffffff",
  comment = "#7a7c7d",
  cyan = "#3daee9",
  green = "#00ff00",
  yellow = "#ffff00",
  orange = "#f67400",
  purple = "#af81ff",
  red = "#da4453",
  blue = "#2980b9",
  pink = "#ff557f",
}

local function ebonite_kaki()
  vim.cmd("hi clear")
  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end

  vim.o.termguicolors = true
  vim.g.colors_name = "ebonite-kaki"

  -- Core highlights with transparent background
  vim.api.nvim_set_hl(0, "Normal", { fg = colors.fg, bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
  vim.api.nvim_set_hl(0, "NonText", { fg = colors.comment, bg = "none" })
  vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
  vim.api.nvim_set_hl(0, "LineNr", { fg = colors.comment, bg = "none" })
  vim.api.nvim_set_hl(0, "CursorLineNr", { fg = colors.yellow })
  vim.api.nvim_set_hl(0, "Comment", { fg = colors.comment, italic = true })
  vim.api.nvim_set_hl(0, "Constant", { fg = colors.green, bg = "#005500", bold = true })
  vim.api.nvim_set_hl(0, "String", { fg = colors.green })
  vim.api.nvim_set_hl(0, "Function", { fg = colors.purple, bg = "#55007f", bold = true })
  vim.api.nvim_set_hl(0, "Keyword", { fg = colors.pink, bold = true })
  vim.api.nvim_set_hl(0, "Type", { fg = "#00ffff", bold = true })
  vim.api.nvim_set_hl(0, "Identifier", { fg = colors.orange })
  vim.api.nvim_set_hl(0, "Search", { fg = "none", bg = "#00aa00" })
  vim.api.nvim_set_hl(0, "Visual", { bg = "#626200" })
end

return {
  "ebonite-kaki",
  config = function()
    ebonite_kaki()
  end,
}
