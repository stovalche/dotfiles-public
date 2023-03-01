# autostart
#$HOME/.config/fish/autostart

# aliases
alias unorun "/home/malikbs/Scripts/shell/unocompiler/.compiler.sh"
alias dotf "/home/malikbs/Scripts/shell/dotf/src/main.sh" #backup to .dotfiles
alias yt "youtube-dl --no-check-certificate --add-metadata -ic" # <download video link>
alias yta "youtube-dl --no-check-certificate -x --audio-format mp3" # <download video link> && convert to audio
alias img "/home/malikbs/Scripts/shell/img2term/img2term"
alias ino "arduino-cli"
alias feh "feh -d -s -. --image-bg=#000000 --no-jump-on-resort --sort filename"
alias v-root "doas nvim"
if type -q exa
  alias ll "exa -l -a --group-directories-first --color=automatic --long --icons"
  alias lla "ll -a"
  export EXA_COLORS="reset:uu=0:gu=0:*.md=38;5;196:*.gz=38;5;135:*.zip=38;5;135:\
    *.rar=38;5;135:*.log=38;5;245:da=37:*.py=38;5;220:*.java=38;5;172:sn=37:\
    *.conf=38;5;249:*.vim=38;5;46:di=38;5;75:lp=38;5;243:Vagrantfile=33:*.c=38;5;27:\
    *.cpp=38;5;27:*.sh=32:*.lua=34:ex=38;5;5"
end
