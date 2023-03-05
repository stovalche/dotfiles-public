function _peco_change_directory
  if [ (count $argv) ]
    peco --layout=bottom-up --query "$argv "|perl -pe 's/([ ()])/\\\\$1/g'|read foo
  else
    peco --layout=bottom-up |perl -pe 's/([ ()])/\\\\$1/g'|read foo
  end
  if [ $foo ]
    builtin cd $foo
    commandline -r ''
    commandline -f repaint
  else
    commandline ''
  end
end

function peco_change_directory
  begin
    set Current "$(pwd)"
    echo $HOME/.config/
    ghq list -p
    ls -ad $HOME/.dotfiles/* |grep -v \.git
    ls -ad $HOME/.dotfiles/*/* |grep -v \.git
    ls -ad $HOME/.dotfiles/*/*/* |grep -v \.git
    ls -ad $HOME/.config/* |grep -v \.git
    ls -ad $HOME/.config/*/* |grep -v \.git
    ls -ad $HOME/.config/*/*/* |grep -v \.git
    ls -ad $HOME/Scripts/* |grep -v \.git
    ls -ad $HOME/Scripts/*/* |grep -v \.git
    ls -ad $HOME/Scripts/*/*/* |grep -v \.git
    ls -ad $HOME/Project/* |grep -v \.git
    ls -ad $HOME/Project/*/* | grep -v \.git
    ls -ad $HOME/Project/*/*/* | grep -v \.git
  end | sed -e 's/\/$//' | awk '!a[$0]++' | _peco_change_directory $argv
end
