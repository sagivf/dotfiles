if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [ -f ~/dev/dotfiles/.bash_aliases.sh ]; then
    source ~/dev/dotfiles/.bash_aliases.sh
fi
if [ -f ~/dev/dotfiles/.bash_colors.sh ]; then
    source ~/dev/dotfiles/.bash_colors.sh
fi
if [ -f ~/dev/dotfiles/.bash_marks.sh ]; then
    source ~/dev/dotfiles/.bash_marks.sh
fi
if [ -f ~/dev/dotfiles/.git-prompt.sh ]; then
    source ~/dev/dotfiles/.git-prompt.sh
fi
if [ -f ~/dev/dotfiles/.git-completion.sh ]; then
    source ~/dev/dotfiles/.git-completion.sh
fi
if [ -f ~/dev/dotfiles/.git-flow-completion.sh ]; then
    source ~/dev/dotfiles/.git-flow-completion.sh
fi
if [ -f ~/dev/dotfiles/.npm-completion.sh ]; then
    source ~/dev/dotfiles/.npm-completion.sh
fi
if [ -f ~/dev/dotfiles/.angular-cli.sh ]; then
    source ~/dev/dotfiles/.angular-cli.sh
fi