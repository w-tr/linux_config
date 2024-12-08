sudo apt update && sudo apt upgrade -y
##### Get essentials
sudo apt install neovim git curl wget vlc build-essential -y
##### Give permissions
sudo usermod -aG lp,dialout $(whoami)
##### Install vscode as per code.visualstudio.com/doc...
sudo apt-get install -y gpg software-properties-common apt-transport-https
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" |sudo tee /etc/apt/sources.list.d/vscode.list > /dev/null
rm -f packages.microsoft.gpg
sudo apt update
sudo apt install code

