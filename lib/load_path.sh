bashed::load_paths() {
  local source_path path
  source_path=$1
  [ ! -d "$source_path" ] && return
  for path in "$source_path"/*; do
    bashed::log::debug "loading path $path"
    PATH=$(cat $path):$PATH
  done
}

bashed::load_exts() {
  local source_path path
  source_path=$1
  [ ! -d "$source_path" ] && return
  for path in "$source_path"/*; do
    bashed::log::debug "loading ext $path"
    [ -f "$path" ] && source "$path"
  done
}
