vim.api.nvim_create_user_command("Plugin10", function()
	print(require("plugin-10").value)
end, {})

vim.keymap.set("n", "<Plug>(Plugin10)", function()
	print(require("pluign-10").value)
end)
