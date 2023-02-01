local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require("bektosh.lsp.mason")
require("bektosh.lsp.handlers").setup()
require("bektosh.lsp.null-ls")
