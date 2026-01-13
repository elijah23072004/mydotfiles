require("myNvim.remap")
require("myNvim.set")
require("myNvim.lazy_init")

vim.diagnostic.enable = true
vim.diagnostic.config({
    virtual_lines=true,
})

if vim.lsp.inlay_hint then
  vim.keymap.set(
  "n",
    "<leader>h",
    function() vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled()) end,
    {desc = "Toggle Inlay Hints"}
  )
end


