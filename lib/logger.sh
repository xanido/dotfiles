BASHED_LOG_LEVEL_NONE=0
BASHED_LOG_LEVEL_ERROR=1
BASHED_LOG_LEVEL_WARN=2
BASHED_LOG_LEVEL_INFO=3
BASHED_LOG_LEVEL_DEBUG=4

# default log level
[[ -z "$BASHED_LOG_LEVEL" ]] && BASHED_LOG_LEVEL=$BASHED_LOG_LEVEL_INFO

# most common logging fn
bashed::log() {
    bashed::log::info "$@"
}

bashed::log::err() {
    [[ "$BASHED_LOG_LEVEL" -ge $BASHED_LOG_LEVEL_ERROR ]] && echo "$@"
}

bashed::log::warn() {
    [[ "$BASHED_LOG_LEVEL" -ge $BASHED_LOG_LEVEL_WARN ]] && echo "$@"
}

bashed::log::info() {
    [[ "$BASHED_LOG_LEVEL" -ge $BASHED_LOG_LEVEL_INFO ]] && echo "$@"
}

bashed::log::debug() {
    [[ "$BASHED_LOG_LEVEL" -ge $BASHED_LOG_LEVEL_DEBUG ]] && echo "$@"
}
