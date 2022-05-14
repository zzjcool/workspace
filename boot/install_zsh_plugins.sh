#!zsh

source ~/.zshrc
# 安装高亮和自动补全插件
echo zsh custom:$ZSH_CUSTOM
git clone http://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions && \
git clone http://github.com/zsh-users/zsh-syntax-highlighting $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
