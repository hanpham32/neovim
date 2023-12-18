local ls = require('null-ls')

ls.setup({
    -- debug = true, -- Turn on debug for :NullLsLog
    diagnostics_format = "#{m} #{s}[#{c}]",
    sources = {
        ls.builtins.formatting.black.with({
            extra_args = { "--line-length=120", "--skip-string-normalization" },
        }),
        ls.builtins.diagnostics.flake8,
        ls.builtins.diagnostics.mypy.with({
            -- https://github.com/jose-elias-alvarez/null-ls.nvim/issues/1208#issuecomment-1343562820
            cwd = function(_) return vim.fn.getcwd() end,
        }),
        ls.builtins.diagnostics.shellcheck,
    },
})
