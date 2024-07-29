# Dotfiles Setup

Welcome to my dotfiles repository! This repository contains configuration files and a setup script to quickly configure your environment. The `init.zsh` script automates the process of symlinking these configuration files.

## Prerequisites

Before you begin, ensure you have the following tools installed:

- **GNU Stow**: Used to manage symlinks
  - **Ubuntu**: Install with `sudo apt-get install stow`
- **Zsh**: Required to execute the `init.zsh` script.

## Setup Instructions

1. **Make the `init.zsh` Script Executable**

   Change the permissions of the `init.zsh` script to make it executable:

   ```zsh
   chmod +x init.zsh && ./init.zsh
