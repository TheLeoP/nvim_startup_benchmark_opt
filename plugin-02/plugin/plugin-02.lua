vim.api.nvim_create_user_command("Plugin02", function()
	print(require("plugin-02").value)
end, {})

vim.keymap.set("n", "<Plug>(Plugin02)", function()
	print(require("pluign-02").value)
end)
