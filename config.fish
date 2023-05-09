#oh-my-posh init fish --config "~/.poshthemes/M365Princess.omp.json" | source
# oh-my-posh init fish --config ~/.poshthemes/multiverse-neon.omp.json | source
function starship_transient_prompt_func
  starship module time
  starship module character
end
starship init fish | source
enable_transience
set -x STARSHIP_CONFIG "$HOME/.config/starship/starship.toml"

zoxide init fish | source

fish_add_path $HOME/.cargo/bin
fish_add_path ~/.local/bin
fish_add_path /home/linuxbrew/.linuxbrew/bin
fish_add_path $HOME/.config/tmux/plugins/t-smart-tmux-session-manager/bin

fish_add_path ~/.tmuxifier/bin
eval (tmuxifier init - fish)
set -x EDITOR nvim
alias tm="tmuxifier"
alias ts="tmuxifier s"
abbr tn "tmux new -s (pwd | sed 's/.*\///g')"

alias c="clear"
alias cat="bat"
alias ls="exa --icons"
alias l="exa --icons -l"
alias la="exa --icons -la"
alias ncdu="ncdu --color dark"
alias n="nvim"
alias s="cmatrix -s"
alias view="nvim -R"
alias rt="sudo -E -s"
# alias curl="xh"

nvm use -s 19

set -x PKG_CONFIG_PATH /usr/lib/x86_64-linux-gnu/pkgconfig
set -U fish_greeting ""

# set $STARSHIP_CONFIG "/home/alex/.config/starship.toml"

bind \cz 'fg; and commandline -f repaint'
bind \cS 't; and commandline -f repaint'


# if status is-interactive
#
#     # I'm trying to grow a neckbeard
#     # fish_vi_key_bindings
#     # Set the cursor shapes for the different vi modes.
#     set fish_cursor_default block
#     set fish_cursor_insert line
#     set fish_cursor_replace_one underscore
#     set fish_cursor_visual block
#
#     function fish_user_key_bindings
#         # Execute this once per mode that emacs bindings should be used in
#         fish_default_key_bindings -M insert
#         fish_vi_key_bindings --no-erase insert
#     end
# end
