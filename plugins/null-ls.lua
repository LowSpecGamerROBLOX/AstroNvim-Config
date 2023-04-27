return {
  "jose-elias-alvarez/null-ls.nvim",
  opts = function(_, config)
    -- config variable is the default configuration table for the setup function call
    local null_ls = require "null-ls"

    -- Check supported formatters and linters
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
    config.sources = {
      -- javascript & typescript
      null_ls.builtins.formatting.prettier,
      -- python
      null_ls.builtins.formatting.black.with({
        extra_args = { "--line-length=120" }
      }),
      null_ls.builtins.formatting.isort,
      -- lua
      null_ls.builtins.formatting.stylua,
    }
    return config -- return final config table
  end,
}
