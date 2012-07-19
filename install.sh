#!/bin/sh

set -e

BASE="$(cd "$(dirname "$0")" && pwd)"


# Very simple install script

for file in `find ${BASE} -maxdepth 1 -type f -not -name '.*' -not -name install.sh -not -name bin -not -name etc -not -name README.txt -not -name LICENSE`; do
    filename=`basename "$file"`
    from="$BASE/$filename"
    to="$HOME/.$filename"
    echo "ln -sf $from -> $to"
    ln -sf $from $to
done

# Link directories
for dir in bash vim; do
    from="$BASE/$dir"
    to="$HOME/.$dir"
    echo "ln -sf $from -> $to"
    ln -sf $from $to
done

mkdir -p ~/bin/
for file in "$BASE"/bin/*; do
    filename=`basename "$file"`
    from="$BASE/bin/$filename"
    to="$HOME/bin/$filename"
    echo "ln -sf $from -> $to"
    ln -sf $from $to
done

# Special case: Make bin/git-reup a link to git-up
if [[ -e ~/bin/git-up ]]; then
    ln -sf ~/bin/git-up ~/bin/git-reup
fi
