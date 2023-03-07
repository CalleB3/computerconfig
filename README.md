# computerconfig

## Zsh and oh-my-zsh

install zsh: https://github.com/ohmyzsh/ohmyzsh

Once zsh is installed also install oh-my-zsh for the initial config

`sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

Install Powerlevel10k: https://github.com/romkatv/powerlevel10k

## Other nice-to-haves

- Install homebrew: `https://brew.sh/`

- Install Direnv: `curl -sfL https://direnv.net/install.sh | bash`

- Install Fuzzy-search: https://github.com/junegunn/fzf

- Install tflint: https://github.com/terraform-linters/tflint

- Install tfsec: https://aquasecurity.github.io/tfsec/v1.0.0-rc.1/getting-started/installation/

- Install tfenv: https://github.com/tfutils/tfenv

- Install terraform-docs: https://terraform-docs.io/user-guide/installation/

## Fix gnome tabs in Alt+Tab

```bash
gsettings set org.gnome.desktop.wm.keybindings switch-applications "['<Super>Tab']"
gsettings set org.gnome.desktop.wm.keybindings switch-windows "['<Alt>Tab']"
gsettings set org.gnome.desktop.wm.keybindings switch-applications-backward "['<Shift><Super>Tab']"
gsettings set org.gnome.desktop.wm.keybindings switch-windows-backward "['<Shift><Alt>Tab']"
gsettings set org.gnome.shell.window-switcher current-workspace-only "false"
```
## Other stuff to install:

  - Azure-CLI
  - Kubectl
  - kubectl krew
  - Kubectl-ctx
  - Kubectl-ns
