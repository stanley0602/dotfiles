# This tmux statusbar config was created by tmuxline.vim
# on Sat, 06 Aug 2016

set -g status-bg "colour236"
set -g message-command-fg "colour236"
set -g status-justify "centre"
set -g status-left-length "100"
set -g status "on"
set -g pane-active-border-fg "colour103"
set -g message-bg "colour103"
set -g status-right-length "100"
set -g status-right-attr "none"
set -g message-fg "colour236"
set -g message-command-bg "colour103"
set -g status-attr "none"
#set -g status-utf8 "on"
set -g pane-border-fg "colour239"
set -g status-left-attr "none"
setw -g window-status-fg "colour103"
setw -g window-status-attr "none"
setw -g window-status-activity-bg "colour236"
setw -g window-status-activity-attr "underscore"
setw -g window-status-activity-fg "colour103"
setw -g window-status-separator ""
setw -g window-status-bg "colour236"
set -g status-left "#[fg=colour236,bg=colour103] #[fg=colour231,bg=colour28] #S #[fg=colour22,bg=colour233,nobold,nounderscore,noitalics] #[fg=colour103,bg=colour236,nobold,nounderscore,noitalics]"
set -g status-right "#[fg=colour236,bg=colour236,nobold,nounderscore,noitalics]#[fg=colour244,bg=colour236] #[fg=colour39,bg=colour235,nobold,nounderscore,noitalics] %a %H:%M %Y-%m-%d #[fg=colour239,bg=colour236,nobold,nounderscore,noitalics]#[fg=colour253,bg=colour239] #[fg=colour210,bg=colour231, italics] |#H| "
setw -g window-status-format "#[fg=colour236,bg=colour236,nobold,nounderscore,noitalics]#[default] #[fg=colour231,bg=colour233] #I> #[fg=colour231,bg=colour233,nobold,noitalics] #W  #[fg=colour236,bg=colour236,nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=colour236,bg=colour103,nobold,nounderscore,noitalics]#[fg=colour236,bg=colour103] #[fg=colour39,bg=colour235] #I> #[fg=colour39,bg=colour235,nobold,noitalics] #W  #[fg=colour103,bg=colour236,nobold,nounderscore,noitalics]"
