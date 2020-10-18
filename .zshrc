# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="cobalt2"
# ZSH_THEME="cobalt2-minimal"
alias ll="ls -l"
alias gum="git pull upstream master"

# Changed your .gitignore _after_ you have added / committed some files?
# run `gri` to untrack anything in your updated .gitignore
# Put this in your .zshrc file
alias gri="git ls-files --ignored --exclude-standard | xargs -0 git rm -r"


# Open all merge conflicts or currently changed files in VS Code
# Switch out `code` for `subl`, `vim`, `atom` or your editor's CLI
alias fix="git diff --name-only | uniq | xargs code"

# Take a screenshot every n seconds
# Fun for making timelapse gifs later
# run `creep 20` for every 20 seconds
# function creep() {
#     while :; do; echo "📸" $(date +%H:%M:%S); screencapture -x ~/Screenshots/wes/$(date +%s).png; sleep $1; done
# }

# red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git node npm brew extract z zsh-syntax-highlighting zsh-autosuggestions dirnav)

source $ZSH/oh-my-zsh.sh


function zource(){
  source ~/.zshrc && -
}
