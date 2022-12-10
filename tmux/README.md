# TMUX config

Configuration files for Terminal Multiplexer (TMUX)

## Setting up

Source the main file from the default TMUX configuration (typically ~/.tmux.conf)

```tmux
# Assuming env var set in .bashrc
TMUX_CONF_SRC_DIR="${JRS_DOTFILES_CONFIG_PATH}/tmux"
source-file ${TMUX_CONF_SRC_DIR}/tmux.conf
```
