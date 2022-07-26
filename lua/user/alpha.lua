local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
  return
end

local dashboard = require "alpha.themes.dashboard"

local function button(sc, txt, keybind, keybind_opts)
  local b = dashboard.button(sc, txt, keybind, keybind_opts)
  return b
end

local icons = require "user.icons"

dashboard.section.header.opts.hl = "Title"
dashboard.section.header.val = {
  "                                                     ",
  "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
  "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
  "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
  "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
  "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
  "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
  "                                                     ",
}

dashboard.section.buttons.val = {
  button("f", icons.documents.Files .. " Find file", ":Telescope find_files <CR>"),
  button("p", icons.git.Repo .. " Find project", ":lua require('telescope').extensions.projects.projects()<CR>"),
  button("r", icons.ui.History .. " Recent files", ":Telescope oldfiles <CR>"),
  button("t", icons.ui.List .. " Find text", ":Telescope live_grep <CR>"),
  -- dashboard.button("s", icons.ui.SignIn .. " Find Session", ":silent Autosession search <CR>"),
  button("c", icons.ui.Gear .. " Config", ":e ~/.config/nvim/init.lua <CR>"),
  button("u", icons.ui.CloudDownload .. " Update", ":PackerSync<CR>"),
}

dashboard.section.footer.val = "The-Men-Who..."

dashboard.opts = {

  layout = {
    { type = "padding", val = 7 },
    dashboard.section.header,
    { type = "padding", val = 6 },
    dashboard.section.buttons,
    { type = "padding", val = 6 },
    dashboard.section.footer,
  },
  opts = {
    noautocmd = true,
  },
}
-- vim.cmd([[autocmd User AlphaReady echo 'ready']])
alpha.setup(dashboard.opts)
