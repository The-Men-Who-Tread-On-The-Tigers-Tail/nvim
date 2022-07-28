local colorscheme = "rose-pine"

require("rose-pine").setup {
  dark_variant = "moon",
}

vim.o.background = "light"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  -- vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end
