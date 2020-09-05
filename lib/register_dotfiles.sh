bashed::register_dotfiles() {
    local source_path path
    source_path=$1
    for path in "$source_path"/*
    do
        base=$(basename "$path")
        bashed::log::debug "dotfile check: $base"
        current_target=$(ls -l ~/.$base | awk '{print $NF}')
        if [ "$current_target" != "$path" ]; then
          if [ -f ~/.bashrc ]; then
            bashed::log::debug "dotfile ~/.$base exists, backing up..."
            mv ~/.$base ~/.${base}~`date +'%Y%m%d_%H%M%S'`
          fi
          bashed::log::info "symlinking dotfile ~/.base"
          ln -s "$path" ~/.$base
        fi
    done
}
