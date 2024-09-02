__initDotFiles() {
  read -p "This will symblink all your dotfiles:(Y/n) " input
  input=$(echo "$input" | tr '[:upper:]' '[:lower:]')

  if [ "$input" = "y" ]; then
    if sudo apt install stow -y; then 
      stow --ignore='README.md' --ignore='init.zsh' .
      echo "Dotfiles updated successfully! 🤟🎉"
    else
      echo "Error Occured during the process! 🎲"
    fi
  else
    echo "Discarded Operation! 🎈"
  fi
}

__initDotFiles
