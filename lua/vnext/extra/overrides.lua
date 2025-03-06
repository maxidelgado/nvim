return {
  {
    "allaman/kustomize.nvim",
    enabled = false,
  },
  {
    "allaman/emoji.nvim",
    enabled = false,
  },
  {
    "mfussenegger/nvim-lint",
    event = { "BufWritePost", "BufReadPost", "InsertLeave" },
    opts = {
      formatters_by_ft = {
          go = {  "gofumpt", "goimports-reviser", "golines" },
          javascript = { "prettier" },
          json = { "prettier" },
          lua = { "stylua" },
          markdown = { "prettier" },
          python = { "isort", "ruff_format" },
          sh = { "shfmt" },
          terraform = { "terraform_fmt" },
          ["terraform-vars"] = { "terraform_fmt" },
          tex = { "latexindent" },
          toml = { "taplo" },
          typst = { "typstfmt" },
          yaml = { "yamlfmt" },
        },

      linters_by_ft = {
        dockerfile = { "hadolint" },
        go = { "golangcilint" },
        lua = { "selene" },
        markdown = { "markdownlint-cli2" },
        yaml = { "yamllint" },
        javascript = { "eslint_d" },
        typescript = { "eslint_d" },
        typescriptreact = { "eslint_d" },
        json = { "eslint_d" },
        html = { "eslint_d" },
        css = { "eslint_d" },
        graphql = { "eslint_d" },
        svelte = { "eslint_d" },
        angular = { "eslint_d" },
        python = { "flake8" },
      },

      formatters = {
        -- Golang
        ["goimports-reviser"] = {
            prepend_args = { "-rm-unused" },
        },
        golines = {
            prepend_args = { "--max-len=80" },
        },
        -- Lua
        stylua = {
            prepend_args = {
                "--column-width", "80",
                "--line-endings", "Unix",
                "--indent-type", "Spaces",
                "--indent-width", "4",
                "--quote-style", "AutoPreferDouble",
            },
          },
        },
    },
  },
}
