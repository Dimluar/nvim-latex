function RunFile(file)
  file = file or vim.fn.expand("%")
  vim.cmd("!python " .. file)
end
