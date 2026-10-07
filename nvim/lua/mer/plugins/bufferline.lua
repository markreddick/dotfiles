return {
	"akinsho/bufferline.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	version = "*",
	config = function()
		local function tabline_counts()
			local errors = #vim.diagnostic.get(nil, { severity = vim.diagnostic.severity.ERROR })
			local warnings = #vim.diagnostic.get(nil, { severity = vim.diagnostic.severity.WARN })
			local buffers = #vim.fn.getbufinfo({ buflisted = 1 })

			return {
				{
					text = ("  %d "):format(errors),
					fg = "#f7768e",
				},
				{
					text = ("  %d "):format(warnings),
					fg = "#e0af68",
				},
				{
					text = (" 󰈙 %d "):format(buffers),
					fg = "#7aa2f7",
				},
			}
		end

		require("bufferline").setup({
			options = {
				mode = "tabs",
				show_buffer_close_icons = false,
				show_buffer_icons = false,
				show_duplicate_prefix = false,
				tab_size = 10,
				truncate_names = false,
				separator_style = "slant",
				custom_areas = {
					right = tabline_counts,
				},
			},
			highlights = {
				buffer_selected = {
					italic = false,
					bold = false
				}
			},
		})

		vim.api.nvim_create_autocmd({ "DiagnosticChanged", "TabNew", "TabClosed" }, {
			group = vim.api.nvim_create_augroup("BufferlineTablineCounts", { clear = true }),
			callback = function()
				vim.schedule(vim.cmd.redrawtabline)
			end,
		})
	end,
}
