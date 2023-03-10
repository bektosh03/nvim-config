local ok, configs = pcall(require, "nvim-treesitter.configs")
if not ok then
    return
end

configs.setup {
    ensure_installed = { "go", "lua", "vim" },
    sync_install = false,
    highlight = {
        enable = true,
    },
    indent = {
        enable = true,
    },
}
