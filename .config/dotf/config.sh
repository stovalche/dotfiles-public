if [ "$Cmd" = "--head" ]; then
  if [ "$Cmd2" = "private" ]; then
    Files_[0]="$HOME/Android/Sdk/platforms/android-30/skins/IphoneX_avd_skin/*"
    Files_Destination_[0]="Android/Sdk/platforms/android-30/skins/androidx"
    Dirs_[0]="$HOME/Scripts/"
    Dirs_Destination_[0]=""
  fi
fi

Files_[1]="$HOME/.xinitrc,
           $HOME/.xprofile"
Files_[2]="$HOME/.bashrc"
Files_Destination_[1]=""
Files_Destination_[2]="bash-env"

Dirs_[1]="$HOME/.config/fish/,
          $HOME/.config/nvim/,
          $HOME/.config/tmux/,
          $HOME/.config/polybar/,
          $HOME/.config/sxhkd/,
          $HOME/.config/alacritty/,
          $HOME/.config/dotf/,
          $HOME/.config/peco/,
          $HOME/.config/bspwm/,
          $HOME/.config/picom/,
          $HOME/.config/dunst/,
          $HOME/.config/neofetch/,
          $HOME/.config/rofi/"
Dirs_Destination_[1]=".config"

LogMax=50
