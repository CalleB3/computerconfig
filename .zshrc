# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

# Load bash autocompletion
autoload -U +X bashcompinit && bashcompinit
autoload -U +X compinit && compinit
autoload -U compinit && compinit
source <(kubectl completion zsh)

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="powerlevel10k/powerlevel10k"
#ZSH_THEME="amuse"
ZSH_THEME="spaceship"
alias iw="init-workspace"
alias la="ll -a"
alias tf=terraform
alias k=kubectl
alias kgn="kubectl get nodes"
alias kgp="kubectl get pods"
alias kg="kubectl get"
alias kubens="kubectl ns"
alias ctx=kubectl-ctx
alias aal="az account list -o table"
alias setsub="az account set --subscription"


#SPACESHIP_KUBECONTEXT_SHOW is deprecated. Use SPACESHIP_KUBECTL_CONTEXT_SHOW instead
#SPACESHIP_KUBECONTEXT_COLOR is deprecated. Use SPACESHIP_KUBECTL_CONTEXT_COLOR instead
#Warning! The 'pyenv' section was not found. Removing it from the prompt.
#Warning! The 'vi_mode' section was not found. Removing it from the prompt.


export SPACESHIP_PROMPT_ORDER=(
    # time          # Time stampts section
    user          # Username section
    dir           # Current directory section
    host          # Hostname section
    git           # Git section (git_branch + git_status)
    # hg            # Mercurial section (hg_branch  + hg_status)
    # package       # Package version
    # node          # Node.js section
    # ruby          # Ruby section
    # elm           # Elm section
    # elixir        # Elixir section
    # xcode         # Xcode section
    # swift         # Swift section
    golang        # Go section
    # php           # PHP section
    # rust          # Rust section
    # haskell       # Haskell Stack section
    # julia         # Julia section
    # docker        # Docker section
    # aws           # Amazon Web Services section
	gcloud          # gcloud section
    venv          # virtualenv section
    # conda         # conda virtualenv section
    #pyenv         # Pyenv section
    # dotnet        # .NET section
    # ember         # Ember.js section
    kubectl        # Kubectl context section
    terraform     # Terraform workspace section
    # exec_time     # Execution time
    line_sep      # Line break
    # battery       # Battery level and status
    #vi_mode       # Vi-mode indicator
    # jobs          # Background jobs indicator
    exit_code     # Exit code section
    char          # Prompt character
)

export SPACESHIP_HOST_SHOW=true
export SPACESHIP_DIR_TRUNC=0
export SPACESHIP_DIR_COLOR=#008700
export SPACESHIP_DIR_TRUNC_REPO=false
export SPACESHIP_GIT_BRANCH_COLOR=#af5f00
export SPACESHIP_KUBECTL_CONTEXT_COLOR=#008787
export SPACESHIP_KUBECTL_SHOW=true
export SPACESHIP_KUBECTL_CONTEXT_SHOW=true
export SPACESHIP_KUBECTL_VERSION_SHOW=false

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?

# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
git
kubectl
)

source $ZSH/oh-my-zsh.sh

source "/home/linuxbrew/.linuxbrew/opt/kube-ps1/share/kube-ps1.sh"
PROMPT='$(kube_ps1)'$PROMPT
PS1='$(kube_ps1)'$PS1

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
# init workspace

az() {
    if [[ $1 == "aks" && $2 == "get-credentials" ]]; then
        if [[ ${KUBECONFIG} != "" ]]; then
            command az $@ --file ${KUBECONFIG}
        else
            command az $@
        fi
    else
        command az $@
    fi
}

init-workspace() {
    curr_path=$(pwd)
    new_path=$(realpath ~/dev/$1)

    if [[ ! $curr_path =~ $new_path ]]; then
        ~/dev/$1
    fi
}

# Create Workspace function
function create-workspace() {
    mkdir -p ~/dev/$1/.ssh
    cd ~/dev/$1/.ssh
    ssh-keygen -b 4096 -t rsa -C $1 -f $1_id_rsa
    cp ~/.create_workspace_envrc ~/dev/$1/.envrc
    direnv allow ~/dev/$1/.envrc
    cd ~/dev/$1
}

#source /usr/local/etc/bash_completion.d/az # Azure-CLI
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
eval "$(direnv hook zsh)"
complete -F __start_kubectl k
complete -F __start_kubectx ctx
complete -F __start_kubectl-ctx ctx
complete -F __start_kubectl-ns kubens


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
