
# # Grab my $PATHs from ~/.extra
# set -l PATH_DIRS (cat "$HOME/.extra" | grep "^PATH" | \
#     # clean up bash PATH setting pattern
#     sed "s/PATH=//" | sed "s/\\\$PATH://" | \
#     # rewrite ~/ to use {$HOME}
#     sed "s/~\//{\$HOME}\//")
#
#
# set -l PA ""
#
# for entry in (string split \n $PATH_DIRS)
#     # resolve the {$HOME} substitutions
#     set -l resolved_path (eval echo $entry)
#     if test -d "$resolved_path"; # and not contains $resolved_path $PATH
#         set -x PA $PA "$resolved_path"
#     end
# end

set -x PATH $HOME/.cargo/bin $HOME/.homebrew/opt/go/libexec/bin $HOME/.homebrew/bin $HOME/.homebrew/sbin $HOME/bin $PATH
set -x GOPATH $HOME/Developpement/Workspaces/go
set -x RUST_SRC_PATH $HOME/Developpement/rustc-1.7.0/src
