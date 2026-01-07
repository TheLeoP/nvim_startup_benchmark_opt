vim.api.nvim_create_user_command("Plugin16", function()
	print(require("plugin-16").value)
end, {})

vim.keymap.set("n", "<Plug>(Plugin16)", function()
	print(require("pluign-16").value)
end)
