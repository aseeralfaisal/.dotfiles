__initDotFiles() {
  read -p "This will symblink all your dotfiles:(Y/n) " input
  input=$(echo "$input" | tr '[:upper:]' '[:lower:]')

  if [ "$input" = "y" ]; then
    if sudo dnf install stow -y; then 
      read -p "Change shell to zsh(Y/n) " input_shell
      input_shell=$(echo "$input_shell" | tr '[:upper:]' '[:lower:]')

      if [ "$input_shell" = "y" ]; then 
        chsh -s $(which zsh)
      fi

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
