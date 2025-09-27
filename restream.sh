#!/bin/bash

# Replace with your IPTV URL and Livepush stream key
IPTV_URL="http://ugeen.live:8080/Ugeen_VIPArFrgF/jhfJ51/126"
LIVEPUSH_URL="rtmp://stream.livepush.io/live/rtmp_28e57109040945e9a603a035bb5ea433"

ffmpeg -re -i "$IPTV_URL" -c copy -f flv "$LIVEPUSH_URL"
