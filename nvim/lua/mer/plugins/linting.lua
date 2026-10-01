return {
  "mfussenegger/nvim-lint",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local lint = require("lint")

    lint.linters_by_ft = {
      javascript = { "eslint_d" },
	  php = { "php", "phpstan" },
    }

    local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

    local function file_in_cwd(file_name)
      return vim.fs.find(file_name, {
        upward = true,
        stop = vim.loop.cwd():match("(.+)/"),
        path = vim.fs.dirname(vim.api.nvim_buf_get_name(0)),
        type = "file",
      })[1]
    end

    local function remove_linter(linters, linter_name)
      for k, v in pairs(linters) do
        if v == linter_name then
          linters[k] = nil
          break
        end
      end
    end

    local function linter_in_linters(linters, linter_name)
      for k, v in pairs(linters) do
        if v == linter_name then
          return true
        end
      end
      return false
    end

    local function remove_linter_if_missing_config_file(linters, linter_name, config_file_name)
      if linter_in_linters(linters, linter_name) and not file_in_cwd(config_file_name) then
        remove_linter(linters, linter_name)
      end
    end

    local function available_linters(linters)
      local available = {}

      for _, linter_name in ipairs(linters) do
        local linter = lint.linters[linter_name]
        local cmd = linter.cmd
        if type(cmd) == "function" then
          cmd = cmd()
        end

        if cmd and vim.fn.executable(cmd) == 1 then
          table.insert(available, linter_name)
        end
      end

      return available
    end

    local function try_linting()
      local linters = lint.linters_by_ft[vim.bo.filetype]

      if linters then
        -- remove_linter_if_missing_config_file(linters, "eslint_d", ".eslintrc.cjs")
        remove_linter_if_missing_config_file(linters, "eslint_d", "eslint.config.js")
      end

      lint.try_lint(linters and available_linters(linters) or nil)
    end

    vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
      group = lint_augroup,
      callback = function()
        try_linting()
      end,
    })

    vim.keymap.set("n", "<leader>l", function()
      try_linting()
    end, { desc = "Trigger linting for current file" })
  end,
}
