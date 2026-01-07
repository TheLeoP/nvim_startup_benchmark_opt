vim.api.nvim_create_user_command("Plugin07", function()
	print(require("plugin-07").value)
end, {})

vim.keymap.set("n", "<Plug>(Plugin07)", function()
	print(require("pluign-07").value)
end)
