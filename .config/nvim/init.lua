require('malikbs.base')
require('malikbs.maps')
require('malikbs.highlights')
require('malikbs.netrw')
require('malikbs.runner')
require('malikbs.plugins')

local has = vim.fn.has
local is_linux = has "linux"
local is_mac = has "macunix"
local is_win = has "win32"
local is_wsl = has "wsl"

if is_linux then
  require('malikbs.linux')
elseif is_mac then
  require('malikbs.macos')
elseif is_win then
  require('malikbs.windows')
elseif is_wsl then
  require('malikbs.wsl')
end
