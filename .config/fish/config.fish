alias vim="nvim"

set -g theme_display_git yes
set -g theme_display_git_dirty yes
set -g theme_display_git_untracked yes
set -g theme_display_git_ahead_verbose yes
set -g theme_display_git_dirty_verbose yes
set -g theme_display_git_stashed_verbose yes
set -g theme_display_git_master_branch yes
set -g theme_git_worktree_support no
set -g theme_display_vagrant no
set -g theme_display_docker_machine yes
set -g theme_display_k8s_context no
set -g theme_display_hg no
set -g theme_display_virtualenv yes
set -g theme_display_ruby no
set -g theme_display_user ssh
set -g theme_display_hostname ssh
set -g theme_display_vi no
set -g theme_display_date no
set -g theme_display_cmd_duration yes
set -g theme_title_display_process yes
set -g theme_title_display_path yes
set -g theme_title_display_user yes
set -g theme_title_use_abbreviated_path no
set -g theme_avoid_ambiguous_glyphs yes
set -g theme_powerline_fonts yes
set -g theme_nerd_fonts no
set -g theme_show_exit_status yes
set -g theme_color_scheme dark
set -g fish_prompt_pwd_dir_length 0
set -g theme_project_dir_length 1
set -x EDITOR nvim
set -Ux LC_ALL en_US.UTF-8
set -Ux LANG en_US.UTF-8
set -g fish_user_paths "/usr/local/bin" $fish_user_paths

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/declankelleher/google-cloud-sdk/path.fish.inc' ]; . '/Users/declankelleher/google-cloud-sdk/path.fish.inc'; end

# Base16 Shell
if status --is-interactive
    set BASE16_SHELL "$HOME/.config/base16-shell"
    source "$BASE16_SHELL/profile_helper.fish"
end

# Start in vi mode
fish_vi_key_bindings

# and now restore ctrl+f for autocomplete
function fish_user_key_bindings
	for mode in insert default visual
		bind -M $mode \cf forward-char
		bind -M $mode \cp up-or-search
		bind -M $mode \cn down-or-search
	end
end

fish_user_key_bindings
