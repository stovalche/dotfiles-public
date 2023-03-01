local status, bufferline = pcall(require, "bufferline")
if (not status) then return end

bufferline.setup({
  options = {
    mode = 'buffers',
    separator_style = 'slant',
    always_show_bufferline = false,
    show_buffer_close_icons = false,
    show_close_icon = false,
    color_icons = true,
    enforce_regular_tabs = true,
    modified_icon = '',
  },
  highlights = {
    separator = {
      fg = '#073642',
      bg = '#002530'
    },
    separator_selected = {
      fg = '#073642',
    },
    separator_visible = {
      fg = '#073642',
      bg = '#002530'
    },
    background = {
      fg = '#657b83',
      bg = '#002530',
      italic = false
    },
    buffer_selected = {
      fg = '#eee8d5',
      bold = true,
      italic = true
    },
    buffer_visible = {
      fg = '#eee8d5',
      bg = '#002530',
      italic = true
    },
    fill = {
      fg = '#002530',
      bg = '#073642'
    },
    modified = {
      bg = '#002530'
    },
    modified_visible = {
      bg = '#002530'
    },
  },
})
