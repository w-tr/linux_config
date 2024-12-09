sudo apt update && sudo apt upgrade -y
##### Get essentials
sudo apt install -y \
	neovim \
	git \
	curl \
	wget \
	vlc \
	build-essential \
	meld \
	gtkterm \
	gtkhash \
	gimp

##### Give permissions
sudo usermod -aG lp,dialout $(whoami)

##### Install vscode as per code.vis`ualstudio.com/doc...
sudo apt-get install -y gpg software-properties-common apt-transport-https
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" |sudo tee /etc/apt/sources.list.d/vscode.list > /dev/null
rm -f packages.microsoft.gpg
sudo apt update
sudo apt install code

##### Install WezTerm
curl -fsSL https://apt.fury.io/wez/gpg.key | sudo gpg --yes --dearmor -o /etc/apt/keyrings/wezterm-fury.gpg
echo 'deb [signed-by=/etc/apt/keyrings/wezterm-fury.gpg] https://apt.fury.io/wez/ * *' | sudo tee /etc/apt/sources.list.d/wezterm.list
sudo apt update
sudo apt install wezterm
# Move away from Bash and embrace oh my zsh setup.
sudo apt install zsh
sudo apt install powerline-fonts
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

##### Install nerd font(s)
git clone --depth 1 https://github.com/ryanoasis/nerd-fonts.git
cd nerd-fonts
./install.sh UbuntuMono
cd ..
rm -rf nerd-fonts

##### A search that works.
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

