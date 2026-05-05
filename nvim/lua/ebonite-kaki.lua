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

