vim.api.nvim_create_user_command("Plugin05", function()
	print(require("plugin-05").value)
end, {})

vim.keymap.set("n", "<Plug>(Plugin05)", function()
	print(require("pluign-05").value)
end)
