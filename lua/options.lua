local g = vim.g
local o = vim.opt

-- enabling number and relativenumber  togethrer for hybrid line number mode
o.number = true -- number lines
o.relativenumber = true -- number lines with relative line numbers
--------------------------------------------------------------------------------

-- use netrw as directory tree viewer
g.netrw_banner = 0 -- disable netrw banner
g.netrw_liststyle = 3 -- directory tree style
--------------------------------------------------------------------------------

o.cursorline = true -- highlight current line
o.mouse = 'a' -- enable mouse support
o.swapfile = false -- disable swapfile
o.backup = false -- disable backup

g.mapleader = ' ' -- set mapleader to space

