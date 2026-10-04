vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

keymap.set("n", "Y", "yy", { noremap = true, desc = "Yank current line" })
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })
keymap.set("n", "<leader>d", ":bdelete<CR>", { desc = "Delete current buffer" })
keymap.set("n", "<leader>b", ":ls<CR>:b", { desc = "List buffers" })
keymap.set("n", "<leader>cd", ":lcd %:p:h<CR>:pwd<CR>", { desc = "Set working directory" })
keymap.set("n", "<leader>ee", "<cmd>edit .<CR>", { desc = "Open working directory" })
keymap.set("n", "<leader>ef", function()
	vim.cmd.edit(vim.fn.fnameescape(vim.fn.expand("%:p:h")))
end, { desc = "Open current file directory" })

-- allow "q" to close the directory browser and go back to prior buffer
vim.api.nvim_create_autocmd("FileType", {
	pattern = "directory",
	callback = function(ev)
		keymap.set("n", "q", "<cmd>buffer #<CR>", {
			buffer = ev.buf,
			desc = "Return to previous buffer",
		})
	end,
})

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window
keymap.set("n", "<TAB>", "<C-w>w", { noremap = true, silent = true, desc = "Go to next split" }) -- go to next split
keymap.set("n", "<S-TAB>", "<C-w>W", { noremap = true, silent = true, desc = "Go to prior split" }) -- go to prior split

-- tab management
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab
