vim.api.nvim_create_user_command("Plugin09", function()
	print(require("plugin-09").value)
end, {})

vim.keymap.set("n", "<Plug>(Plugin09)", function()
	print(require("pluign-09").value)
end)
