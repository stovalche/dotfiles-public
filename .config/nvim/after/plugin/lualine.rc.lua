local status, lualine = pcall(require, "lualine")
if (not status) then return end

local function path_shorten()
  return [[ %.40{pathshorten(expand('%:~:h'))}]]
end

lualine.setup {
  options = {
    icons_enabled = true,
    theme = 'solarized_dark',
    section_separators = {left = '', right = ''},
    component_separators = {left = '', right = ''},
    disabled_filetypes = {},
    fmt = string.lower
  },
  sections = {
    lualine_a = {{'mode', color = { fg = '#002b36'}}},
    lualine_b = {'branch'},
    lualine_c = {
      path_shorten,
      {'filename',
        file_status = true,     -- displays file status (readonly status, modified status)
        path = 0,               -- 0 = just filename, 1 = relative path, 2 = absolute path, 3 = absolute path and '~' as home
        shorting_target = 15,   -- Shortens path to leave 40 spaces in the window
                                -- for other components. (terrible name, any suggestions?)
        symbols = {
          modified = '',       -- Text to show when the file is modified.
          readonly = '[RO]',    -- Text to show when the file is non-modifiable or readonly.
          unnamed = 'no name',  -- Text to show for unnamed buffers.
          newfile = 'new'
        },
      },
    },
    lualine_x = {
      { 'diagnostics',
        sources = {"nvim_diagnostic"}, symbols = {error = ' :', warn = '  :', info = '  :', hint = ' :'},
        sections = { 'error', 'warn', 'info', 'hint' },
        colored = true,
        update_in_insert = true,
        always_visible = false
      },
      {'filetype',
      colored = true,           -- Displays filetype icon in color if set to true
      icon_only = false,        -- Display only an icon for filetype
      icon = { align = 'left' },-- Display filetype icon on the right hand side
      -- icon =    {'X', align='right'}
      -- Icon string ^ in table is ignored in filetype component
      },
      'encoding'
    },
    lualine_y = {'progress'},
    lualine_z = {{'location', color = {fg = '#002b36'}}}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {
      path_shorten,
      {'filename',
        file_status = true,     -- displays file status (readonly status, modified status)
        path = 0                -- 0 = just filename, 1 = relative path, 2 = absolute path
      }
    },
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  extensions = {'fugitive'}
}
