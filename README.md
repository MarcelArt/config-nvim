1. Install nvim
```sh
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz
```
2. Add nvim to path in `.bashrc` file `export PATH="$PATH:/opt/nvim-linux-x86_64/bin"`
3. Clone config-nvim `git clone https://github.com/MarcelArt/config-nvim.git ~/.config/nvim && nvim`