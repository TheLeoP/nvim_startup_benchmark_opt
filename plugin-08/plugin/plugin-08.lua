vim.api.nvim_create_user_command("Plugin08", function()
	print(require("plugin-08").value)
end, {})

vim.keymap.set("n", "<Plug>(Plugin08)", function()
	print(require("pluign-08").value)
end)
