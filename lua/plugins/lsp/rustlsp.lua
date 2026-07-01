local rust_analyzer_setup = function(_, opts)
  vim.api.nvim_create_autocmd("FileType", {
    pattern = "rust",
    callback = function()
      vim.opt_local.shiftwidth = 4
      vim.opt_local.tabstop = 4
      vim.opt_local.softtabstop = 4
      vim.opt_local.expandtab = true
    end,
  })
end

local rust_analyzer_servers = {
  initializeStopped = false,
  checkOnSave = true,
  projectCreation = { openAfterCreate = "ask" },

  cargo = {
    allTargets = true,
    autoreload = true,
    -- extraArgs = {},
    extraEnv = {},
  },

  assist = {
    emitMustUse = false,
    expressionFillDefault = "todo",
    preferSelf = false,
    termSearch = {
      borrowcheck = true,
      fuel = 1800,
    },
  },

  completion = {
    addColonsToModule = true,
    addSemicolonToUnit = true,
    autoAwait = { enable = true },
    autoIter = { enable = true },
    autoimport = { enable = true }, -- exclude = {}
    autoself = { enable = true },
    callable = { snippets = "fill_arguments" },
    fullFunctionSignatures = { enable = false },
    hideDeprecated = false,
    postfix = { enable = true },
    privateEditable = { enable = false },
    -- snippets = {},
    termSearch = { enable = false },
  },
}

return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = { rust_analyzer = rust_analyzer_servers },
    setup = { rust_analyzer = rust_analyzer_setup },
  },
}
