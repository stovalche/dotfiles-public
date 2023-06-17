# notify-fortune

- requirements
  - fortune
  - dunst (notify-send)

## Setup

1. copy this folder (notify-fortune) into your PATH directory or PATH/data directory
2. make a link to a file in this directory named `notify-fortune` from your PATH directory, you can name anything to that link file. Example from your PATH there is a dir `$HOME/.local/bin/` and you copy the notify-fortune folder to `$HOME/.local/bin/data/notify-fortune`, so the link should be:
   `ln -s ./.local/bin/data/notify-fortune/notify-fortune -n ./.local/bin/notify-fortune`

## Add some Picture

- you can add some picture to the `icon` directory inside this folder, but only formatted with 'png' but make sure after you add some pictures to the `./icon` folder, you should run `./icon/sort_name.sh`, if you dont, it wont work. so the list of icon in the `./icon` dir is should be like the list below!
  ```
  ls -l -A icon
    1.png
    2.png
    3.png
  ```
- after that the picture would used by the notify-send as an icon which is randomly selected icon by the program.
