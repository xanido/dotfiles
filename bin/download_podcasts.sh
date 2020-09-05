#!/usr/bin/env bash

# The following script parses podcast feeds and downloads all podcast episodes listed in 
# the feed if they don't exist within the target path. The target directory will be created
# if it does not exist.

[ -x "$(command -v wget)" ] || (echo "wget is not installed" && exit 1)
[ -x "$(command -v sed)" ] || (echo "sed is not installed" && exit 1)
[ -x "$(command -v xargs)" ] || (echo "xargs is not installed" && exit 1)

function download_files_from_feed {
    [ -d $2 ] || mkdir -p $2
    cd $2
    wget -nc $(wget -q -O - $1 | sed -n 's/.*enclosure.*url="\([^"]*\)" .*/\1/p')
}

function echo_update_stats {
    PODCAST_UPDATE_LIST=$(find $1 -ctime -1 -type f)

    echo "All podcasts updated."

    if [ -n "$PODCAST_UPDATE_LIST" ]
    then
        echo -e "\nNew episodes within the last 24 hours:"
        echo $PODCAST_UPDATE_LIST | xargs basename | xargs printf "* %s\n"
    else
        echo "No new episodes are available."
    fi
}

# Download audio files from podcast feeds.
# Feed subscriptions are exemplified below.
PODCAST_DIR=~/Podcasts

download_files_from_feed http://xanido%40gmail.com:***@mysteriousuniverse.org/feed/muplushq/    $PODCAST_DIR/MU

# This one's sending notifications to my phone but might not be useful for you
#/root/send_notification.sh "$(echo_update_stats $PODCAST_DIR)"
echo_update_stats $PODCAST_DIR
