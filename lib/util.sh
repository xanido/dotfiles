bashed::strtoupper() {
  echo "$@" | awk '{print toupper($0)}'
}
