vim.api.nvim_create_user_command("Plugin19", function()
	print(require("plugin-19").value)
end, {})

vim.keymap.set("n", "<Plug>(Plugin19)", function()
	print(require("pluign-19").value)
end)
