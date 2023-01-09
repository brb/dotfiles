vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = false

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

-- TODO(brb) move to separate plugin
if string.match(vim.api.nvim_buf_get_name(0), "/bpf/") then
  vim.opt.tabstop=8
  vim.opt.shiftwidth=8
  vim.opt.softtabstop=8
  vim.opt.textwidth=80
  vim.opt.expandtab=false
  vim.opt.cindent=true
  vim.opt.cinoptions={':0','l1','t0','g0','(0'}
end
