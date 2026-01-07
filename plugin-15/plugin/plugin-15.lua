vim.api.nvim_create_user_command("Plugin15", function()
	print(require("plugin-15").value)
end, {})

vim.keymap.set("n", "<Plug>(Plugin15)", function()
	print(require("pluign-15").value)
end)
