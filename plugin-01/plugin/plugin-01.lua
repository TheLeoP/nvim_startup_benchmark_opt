vim.api.nvim_create_user_command("Plugin01", function()
	print(require("plugin-01").value)
end, {})

vim.keymap.set("n", "<Plug>(Plugin01)", function()
	print(require("pluign-01").value)
end)
