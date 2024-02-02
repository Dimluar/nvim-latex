require("user.options")
require("user.keymaps")
require("utils.color")
require("utils.language")

vim.g.vimwiki_list = {
  { path = "~/documents/notes/" },
  { path = "~/documents/school/" },
}
require("user.lazy")

require("utils.snippet")
