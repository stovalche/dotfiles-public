-- fundamentals --
------------------
+ setter
+ plugin

-- requirements --
------------------
- neovim nightly version
- node (npm, npx)
- npm install pyright (pyright)
- npm install clangd (clangd)
- npm install -g typescript typescript-language-server
- treesitter
- luajit
- lua-language-server (sumneko_lua)
- vscode-css-language-server
- cssls

-- dir structure --
-------------------
- -dir- after
- -dir-dir- plugin :
          -files- plugin configs
- -dir- lua 
      -files- fundamentals setup
      -files- plugins installation
- -file- init.lua

-- lang servers --
------------------
Configured servers list:
- pyright,
sudo npm i --global pyright
- clangd,
- cssls,
- tsserver,
- arduino_language_server,
- java_language_server,
- html,
- sumneko_lua,
- bashls,
sudo npm i --global bash-language-server
- omnisharp_mono
