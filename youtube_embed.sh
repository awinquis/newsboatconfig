#!/bin/bash

#This is a script that takes youtube and reddit links from your feeds and changes them based on your needs.
#youtube links are converted into embed links to minimize distractions and to load faster
#reddit links are opened in old.reddit.com


# Get the YouTube watch link from the command line argument
watch_link=$1

# Check if the link is a YouTube watch link
if [[ $watch_link == *"youtube.com/watch?v="* ]]; then
    # Extract the video ID from the watch link
    video_id=$(echo "$watch_link" | sed -n 's/.*watch?v=\([^&]*\).*/\1/p')

    # Create the embed link using the video ID
    embed_link="https://www.youtube.com/embed/$video_id"

    # Open the embed link in the default web browser
    xdg-open "$embed_link"
elif [[ $watch_link == *"reddit.com/"* ]]; then
    # Extract the path after /r/
    path=$(echo $watch_link | cut -d '/' -f 4-)

    # Specify the new domain
    new_domain="https://old.reddit.com"

    # Construct the new URL with the specified domain
    new_url="$new_domain/$path"

    xdg-open "$new_url"
else
    # Open the link as it is in the default web browser
    xdg-open "$watch_link"
fi
