-- :help options
local options = {
    clipboard = "unnamedplus",
    completeopt = { "menuone", "noselect" },
    fileencoding = "utf-8",
    hlsearch = true,
    mouse = "a",
    showtabline = 2,
    smartcase = true,
    smartindent = true,
    termguicolors = true,
    updatetime = 300,
    expandtab = true,
    shiftwidth = 4,
    tabstop = 4,
    cursorline = true,
    number = true,
    relativenumber = true,
    -- need to find out what it does
    scrolloff = 8,
    sidescrolloff = 8,
    wrap = true,
}

for k, v in pairs(options) do
    vim.opt[k] = v
end

vim.g.neovide_scale_factor = 1.14
