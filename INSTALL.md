#INSTALL

```sh
ZSH="$HOME/.config/zsh" sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)";
```

```sh
git clone --single-branch --depth 1 git@github.com:TheKenkei/custom-ohmyzsh.git $ZSH_CUSTOM/my-custom;
```

```sh
echo "source $ZSH_CUSTOM/my-custom/custom.zsh" >> $ZSH_CUSTOM/example.zsh;
```

#INSTALL POWERLEVEL10K

```sh
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

#INSTALL zsh-syntax-highlighting

```sh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

#EXPORT PLUGINS

```sh
 plugins=( git sudo z brew npm docker docker-compose gh zsh-syntax-highlighting web-search dirhistory)
```

#DONE

```sh
source ~/.zshrc
```
