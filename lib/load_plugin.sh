# vim: set ft=bash
bashed::load_plugin() {
    local plugin_path=$1
    local plugin_name=$(basename "$plugin_path")
    local plugin_disabled_flag="BASHED_DISABLE_PLUGIN_$(bashed::strtoupper $plugin_name)"
    local plugin_disabled=${!plugin_disabled_flag:=0}
    bashed::log::debug "$plugin_disabled_flag: $plugin_disabled"
    bashed::log::debug "Loading plugin $plugin_name from $plugin_path"
    if [[ "${!plugin_disabled_flag}" == 1 ]]; then
        bashed::log::debug "not loading bashed plugin $plugin_name (reason: \$$plugin_disabled_flag)"
        return
    fi
    bashed::load_exts "$plugin_path/ext"
    bashed::load_paths "$plugin_path/path"
    bashed::register_dotfiles "$plugin_path/dotfiles"
}
