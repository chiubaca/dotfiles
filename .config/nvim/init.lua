vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.opt.termguicolors = true
vim.opt.number = true
vim.opt.cursorline = true
vim.opt.signcolumn = "yes"
vim.opt.laststatus = 3
vim.opt.clipboard = "unnamedplus"
vim.opt.autoread = true

vim.api.nvim_create_autocmd({ "FocusGained", "BufEnter", "CursorHold", "CursorHoldI" }, {
  command = "checktime",
})

local function notify_clipboard(message)
  vim.notify(message, vim.log.levels.INFO, { title = "Clipboard" })
end

local clipboard_highlight_ns = vim.api.nvim_create_namespace("clipboard_copy")

local visual_yank = false

vim.api.nvim_create_autocmd("ModeChanged", {
  pattern = "*:*",
  callback = function()
    local event = vim.v.event
    local was_visual = event.old_mode:match("^[vVsS\22]")
    local is_visual = event.new_mode:match("^[vVsS\22]")

    if was_visual and not is_visual then
      local selection_type = event.old_mode:sub(1, 1)
      if selection_type == "s" then selection_type = "v" end

      local text = vim.fn.getregion(
        vim.fn.getpos("'<"),
        vim.fn.getpos("'>"),
        { type = selection_type, exclusive = false }
      )

      vim.schedule(function()
        if visual_yank then
          visual_yank = false
          return
        end

        if #text > 0 then
          vim.fn.setreg("+", text, selection_type)
          vim.highlight.range(0, clipboard_highlight_ns, "Visual", "'<", "'>", {
            regtype = selection_type,
            inclusive = true,
            timeout = 300,
          })
          notify_clipboard("Copied selection")
        end
      end)
    end
  end,
})

vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    if vim.v.event.visual then visual_yank = true end
    vim.highlight.on_yank({ higroup = "Visual", timeout = 300 })
    notify_clipboard("Yanked to clipboard")
  end,
})

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.uv.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons",
    },
    opts = {
      close_if_last_window = true,
      filesystem = {
        follow_current_file = { enabled = true },
        filtered_items = { hide_dotfiles = false },
      },
      window = {
        position = "left",
        width = 30,
      },
    },
  },
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim" },
  },
  {
    "Zeioth/hot-reload.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    event = "BufEnter",
    opts = function()
      local config_dir = vim.fn.stdpath("config")

      return {
        reload_files = {
          config_dir .. "/lua/config/keymaps.lua",
        },
      }
    end,
  },
})

vim.cmd.colorscheme("chiubaca-aura")

require("config.keymaps")
