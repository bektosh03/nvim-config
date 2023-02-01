local ok, autopairs = pcall(require, "nvim-autopairs")
if not ok then
    return
end

autopairs.setup {
    check_ts = true,
    ts_config = {
        lua = { "string", "source" },
    },
    disable_filetype = { "TelescopePrompt" },
}

-- insert `(` after select function or method item from completion
local cmp_autopairs = require("nvim-autopairs.completion.cmp")
local cmp = require("cmp")
cmp.event:on(
    'confirm_done',
    cmp_autopairs.on_confirm_done()
)
