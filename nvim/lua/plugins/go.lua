return {
  {
    "ray-x/go.nvim",
    dependencies = { -- optional packages
      "ray-x/guihua.lua",
      "neovim/nvim-lspconfig",
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      require("go").setup()
    end,
    event = { "CmdlineEnter" },
    ft = { "go", 'gomod' },
    build = ':lua require("go.install").update_all_sync()' -- if you need to install/update all binaries
  }
}

--return {
--{
--"ray-x/go.nvim",
--dependencies = {
--"ray-x/guihua.lua",
--"neovim/nvim-lspconfig",
--"nvim-treesitter/nvim-treesitter",
--"leoluz/nvim-dap-go",
--"hrsh7th/cmp-nvim-lsp",
--},
--config = function()
--local capabilities = require("cmp_nvim_lsp").default_capabilities()

--require("go").setup({
--capabilities = capabilities,
--lsp_cfg = {
--settings = {
--gopls = {
--gofumpt = true,
--codelenses = {
--gc_details = false,
--generate = true,
--regenerate_cgo = true,
--run_govulncheck = true,
--test = true,
--tidy = true,
--upgrade_dependency = true,
--vendor = true,
--},
--hints = {
--assignVariableTypes = false,
--compositeLiteralFields = false,
--compositeLiteralTypes = false,
--constantValues = false,
--functionTypeParameters = false,
--parameterNames = false,
--rangeVariableTypes = false,
--},
--analyses = {
--fieldalignment = true,
--nilness = true,
--unusedparams = true,
--unusedwrite = true,
--useany = true,
--},
--usePlaceholders = true,
--completeUnimported = true,
--staticcheck = true,
--directoryFilters = { "-.git", "-.vscode", "-.idea", "-.vscode-test", "-node_modules" },
--semanticTokens = false,
--},
--},
--},
--luasnip = true,
--trouble = true,
--})
--end,
--event = { "CmdlineEnter" },
--ft = { "go", "gomod" },
--build = ':lua require("go.install").update_all_sync()',
--},
--}
