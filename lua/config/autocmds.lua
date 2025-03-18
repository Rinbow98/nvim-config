-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(ev)
    vim.keymap.set("n", "K", function()
      local base_win_id = vim.api.nvim_get_current_win()
      local windows = vim.api.nvim_tabpage_list_wins(0)
      for _, win_id in ipairs(windows) do
        if win_id ~= base_win_id then
          local win_cfg = vim.api.nvim_win_get_config(win_id)
          if win_cfg.relative == "win" and win_cfg.win == base_win_id then
            vim.api.nvim_win_close(win_id, {})
            return
          end
        end
      end
      vim.lsp.buf.hover()
    end, { remap = false, silent = true, buffer = ev.buf, desc = "Toggle hover" })
    -- Probably lots of other keymaps...
  end,
})
