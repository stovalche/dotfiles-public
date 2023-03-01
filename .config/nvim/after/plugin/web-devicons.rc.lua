local status, icons = pcall(require, "nvim-web-devicons")
if (not status) then return end

icons.set_default_icon('', '#667788')

icons.set_icon{
  fish = {
    icon = "",
    color = "#428850",
    cterm_color = "65",
    name = "fish"
  },
  conf = {
    icon = "",
    color = "#3939ff",
    cterm_color = "99",
    name = "conf"
  },
  ino = {
    icon = "♾ ",
    color = "#00afaf",
    cterm_color = "37",
    name = "Arduino"
  }
}
