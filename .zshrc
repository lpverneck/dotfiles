# path to oh-my-zsh installation
export ZSH="/home/lcs/.oh-my-zsh"

# choose name of the theme to load
ZSH_THEME=""

# plugins to be used
plugins=(
  git
  k
  zsh-autosuggestions
  zsh-syntax-highlighting
)

# load oh-my-zsh
source $ZSH/oh-my-zsh.sh

# =======================================
# >>> Insert new PATH here ! <<<

# path to pure theme installation
fpath+=$HOME/.zsh/pure

# =======================================

# initialize the prompt system
autoload -U promptinit; promptinit

# =======================================
# >>> Pure theme configuration here ! <<<

# change the path color
zstyle :prompt:pure:path color '#ffffff'
# change git dirty symbol color
zstyle :prompt:pure:git:dirty color '#ffffff'
# change the color of execution time displayed
zstyle :prompt:pure:execution_time color '#ffffff'
# change prompt symbol color
zstyle ':prompt:pure:prompt:*' color '#ffffff'
# turn on git stash status
zstyle :prompt:pure:git:stash show yes

# syntax-highlighting plugin config
ZSH_HIGHLIGHT_STYLES[suffix-alias]=fg=blue
ZSH_HIGHLIGHT_STYLES[precommand]=fg=blue
ZSH_HIGHLIGHT_STYLES[arg0]=fg=blue

# =======================================

prompt pure
PURE_PROMPT_SYMBOL='>'

# >>> conda initialize >>>
__conda_setup="$('/home/lcs/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/lcs/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/lcs/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/lcs/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
