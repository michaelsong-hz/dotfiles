set -g theme_title_display_process yes
set -g theme_title_use_abbreviated_path yes
set -g fish_prompt_pwd_dir_length 0

set -g fish_key_bindings hybrid_bindings

set -U EDITOR vim

set -x PATH $PATH (brew --prefix openvpn)/sbin
