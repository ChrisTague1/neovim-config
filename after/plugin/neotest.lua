require("neotest").setup({
    adapters = {
        require("neotest-jest")({
            jestCommand = "npm run test --",
            env = { CI = true },
            cwd = function(path)
                return vim.fn.getcwd()
            end
        })
    },
})
