if [ -f ~/.profile ]; then
    source ~/.profile
fi

if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

# OPAM configuration
. /Users/benjaminran/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true

# The next line updates PATH for the Google Cloud SDK.
if [ -f /Users/benjaminran/dev/google-cloud-sdk/path.bash.inc ]; then
  source '/Users/benjaminran/dev/google-cloud-sdk/path.bash.inc'
fi

# The next line enables shell command completion for gcloud.
if [ -f /Users/benjaminran/dev/google-cloud-sdk/completion.bash.inc ]; then
  source '/Users/benjaminran/dev/google-cloud-sdk/completion.bash.inc'
fi

# Add redwood cli to PATH
export PATH="$PATH:/Users/benjaminran/dev/dcc/dcc-ops/redwood/cli/bin"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# autojump
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

# iterm
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/benjaminran/.sdkman"
[[ -s "/Users/benjaminran/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/benjaminran/.sdkman/bin/sdkman-init.sh"
