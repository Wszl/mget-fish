if not status is-interactive
    exit
end

set -g __mget_version 1.0.0
set -g __mget_home "$__fish_user_data_dir/mget"

function __mget_install --on-event mget_install
    cd $__fish_user_data_dir
    git clone https://github.com/Wszl/mget.git
end

function __mget_update --on-event mget_update
    cd $__mget_home
    git pull;
end

function __mget_uninstall --on-event mget_uninstall
    # Erase all __mget_* functions
    functions -e __mget_install
    functions -e __mget_update

    # Erase __mget variables
    set -e GITHUB_MIRROR

    rm -rf $__mget_home
end
