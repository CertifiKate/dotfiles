# File auto run by coder/github workspaces instances
if [ ! -x "$(command -v chezmoi)" ]; then
        echo "Installing chezmoi"
        sh -c "$(curl -fsLS get.chezmoi.io)"
fi

if [ ! "$DOTFILES_REPO" == "" ]; then
    chezmoi -- init --apply $DOTFILES_REPO
fi
