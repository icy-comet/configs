-- Just an example, supposed to be placed in /lua/custom/

local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.ui = {
   theme = "catppuccin",
}

M.plugins = {
  override = {
    ["kyazdani42/nvim-tree.lua"] = {
      update_focused_file = {
        update_cwd = true
      }
    }
  }
}

return M
