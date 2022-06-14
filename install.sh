#!bin/bash

echo '====== password ======'
password(){
    if ! ${password+:} false
    then
        printf "password: "
	read -s password
    fi
}
password

echo '====== apt update & upgrade & autoremove ======'
sudo apt -y update
sudo apt -y upgrade
sudo apt -y autoremove

echo '====== software install ======'

echo '=== common software ==='
sudo apt install -y \
    git zsh zip unzip autoconf bison build-essential libssl-dev libyaml-dev \
    libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm-dev

echo '=== deno ==='
curl -fsSL https://deno.land/x/install/install.sh | sh
echo 'export DENO_INSTALL="/home/******/.deno"' >> ~/.bash_profile
echo 'export PATH="$DENO_INSTALL/bin:$PATH"' >> ~/.bash_profile

echo '=== stow ==='
sudo apt install -y stow

echo '=== ripgrep ==='
sudo apt install -y ripgrep

echo '=== fish (shell) ==='
$(echo "$password";yes) | sudo -S apt-add-repository ppa:fish-shell/release-3
echo "$password" | sudo -S apt update
echo "$password" | sudo -S apt install -y fish
fish

echo '=== fisher ==='
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
fisher update
fisher install h-matsuo/fish-color-scheme-switcher

echo '=== fzf & fish plugins ==='
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf/
fish install_fish_plug.fish

echo '=== node ==='
sudo apt install -y nodejs npm
sudo npm install n -g
sudo n latest

sudo apt purge -y nodejs npm

echo '=== neovim ==='
$(echo "$password";yes) | sudo -S add-apt-repository ppa:neovim-ppa/unstable
echo "$password" | sudo -S apt update
echo "$password" | sudo -S apt install -y neovim 

echo '=== pyenv ==='
git clone https://github.com/pyenv/pyenv.git ~/.pyenv

echo '=== pyenv-virtualenv ==='
git clone https://github.com/pyenv/pyenv-virtualenv.git $(pyenv root)/plugins/pyenv-virtualenv

echo '=== python ==='
pyenv install $(pyenv install -l | grep -v '[a-zA-Z]' | grep -e '\s2\.?*' | tail -1)
pyenv virtualenv $(pyenv install -l | grep -v '[a-zA-Z]' | grep -e '\s2\.?*' | tail -1) neovim2
source .pyenv/versions/neovim2/bin/activate.fish
pip install -r neovim2.txt
pyenv deactivate
pyenv install $(pyenv install -l | grep -v '[a-zA-Z]' | grep -e '\s3\.?*' | tail -1)
pyenv virtualenv $(pyenv install -l | grep -v '[a-zA-Z]' | grep -e '\s3\.?*' | tail -1) neovim3
source .pyenv/versions/neovim3/bin/activate.fish
pip install -r neovim3.txt
pyenv deactivate

echo '====== GNU stow ======'
cd ~/dotfiles
stow -v nvim fish

echo '=== Re login ==='
exec $SHELL -l
