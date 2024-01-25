require("user.options")
require("user.keymaps")
require("utils.color")

vim.g.vimwiki_list = {
  { path = "~/documents/notes/" },
  { path = "~/documents/school/" },
}
require("user.lazy")
