Files_[0]="$HOME/.xinitrc,
           $HOME/.xprofile"
Files_[1]="$HOME/.bashrc"
Files_Destination_[0]=""
Files_Destination_[1]="bash_env"

Dirs_[0]="$HOME/.config/fish/,
          $HOME/.config/nvim/,
          $HOME/.config/tmux/,
          $HOME/.config/polybar/,
          $HOME/.config/sxhkd/,
          $HOME/.config/alacritty/,
          $HOME/.config/dotf/,
          $HOME/.config/peco/,
          $HOME/.config/bspwm/,
          $HOME/.config/picom/,
          $HOME/.config/dunst/"
Dirs_Destination_[0]=".config"

if [ $Cmd = "--head" ]; then
  if [ $Cmd2 = "private" ]; then
    Files_[2]="$HOME/Android/Sdk/platforms/android-30/skins/IphoneX_avd_skin/*"
    Files_Destination_[2]="Android/Sdk/platforms/android-30/skins/androidx"
    Dirs_[1]="$HOME/Scripts/"
    Dirs_Destination_[1]=""
  fi
fi

LogMax=50
