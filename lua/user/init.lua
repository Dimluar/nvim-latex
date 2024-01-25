require("user.options")
require("user.keymaps")
require("user.utils")

vim.g.vimwiki_list = {
  { path = "~/documents/notes/" },
  { path = "~/documents/school/" },
}
require("user.lazy")
