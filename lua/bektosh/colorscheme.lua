local colorscheme = "rose-pine"
local ok, rose_pine = pcall(require, colorscheme)
if not ok then
    vim.notify("colorscheme " .. colorscheme .. " not found!")
    return
end

rose_pine.setup({
    disable_background = true,
    disable_italics = false,
})

vim.cmd("colorscheme " .. colorscheme)
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
