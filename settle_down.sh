# zsh
if [-e "/bin/zsh"]; then
    chsh -s /bin/zsh
    echo "shell changed to zsh"
else
    echo "zsh not found!"
    exit 1
fi

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# oh-my-zsh plugin
## zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
## zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# vim
cd ~
cat .vimrc<<EOF
colo molokai
syntax on
EOF
mkdir .vim
git clone https://github.com/tomasr/molokai.git ~/.vim/