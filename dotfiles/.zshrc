# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/devinefendy/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

ZSH_DISABLE_COMPFIX=true
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

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
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
plugins=(git
        iterm2
        osx
        colorize
        colored-man-pages
        yarn
        docker
        docker-compose

)

# ------------------------------------ aliases ------------------------------------
# Directory shortcut
alias main="cd ~/Documents/Main/"
alias desktop="cd ~/Desktop/"
alias cdicloud="cd /Users/devinefendy/Library/Mobile\ Documents/com~apple~CloudDocs"

# Resume
alias cp-res-swe="cp ./swe/resume-devin-efendy.pdf ../swe/Devin_Efendy_Resume.pdf"
alias cp-res-ds="cp ./data-science/resume-devin-efendy.pdf ../data-science/Devin_Efendy_Resume.pdf"

# ls from the future
alias ls='lsd'
alias l='lsd -l'
alias la='lsd -a'
alias lla='lsd -la'
alias lst='lsd --tree'

# bat from the future
alias cat='bat'

# source
alias szsh='source ~/.zshrc'
alias sp10k='source ~/.p10k.zsh'

# docker
alias dcon='docker container'
alias drun='docker container run'
alias dexec='docker container exec'
alias dstart='docker container start'
alias dstop='docker container stop'
alias drm='docker container rm'
alias drmf='docker container rm -f'
alias drunrmit='docker container run --rm -it'
alias dbuild='docker build'

alias drmvol='docker volume rm $(docker volume ls -q)'

alias dps='docker ps'
alias dpsa='docker ps -a'
alias dpsaq='docker ps -aq' 
alias killall-container='docker container rm -f $(docker ps -aq)'

alias dim='docker image'
alias dimls='docker images'
alias dnet='docker network'

# Links
alias url-linkedin='echo https://www.linkedin.com/in/devinefendy/'
alias url-github='echo https://github.com/devin-efendy'
alias url-portfolio='echo https://devinsefendy.com'

alias goto-linkedin='open https://www.linkedin.com/in/devinefendy/'
alias goto-github='open https://github.com/devin-efendy'
alias goto-portfolio='open https://devinsefendy.com'

# COMP1020 marking 
alias ca-1='javac -cp .:junit-4.13.jar:hamcrest-core-1.3.jar MarkingQ1.java'
alias ca-2='javac -cp .:junit-4.13.jar:hamcrest-core-1.3.jar MarkingQ2.java'

alias ra-1='java -cp .:junit-4.13.jar:hamcrest-core-1.3.jar org.junit.runner.JUnitCore MarkingQ1'
alias ra-2='java -cp .:junit-4.13.jar:hamcrest-core-1.3.jar org.junit.runner.JUnitCore MarkingQ2'

alias ta-1='echo "=== Testing Phase Q1 ===" && ca-1 && ra-1'
alias ta-2='echo "=== Testing Phase Q2 ===" && ca-2 && ra-2'

alias ta1-all='ta1-1 && ta1-2 && ta1-3 && ta1-4'
alias java-rm-class="rm -rf *.class"

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

source $ZSH/oh-my-zsh.sh

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

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/devinefendy/opt/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/devinefendy/opt/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/devinefendy/opt/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/devinefendy/opt/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

