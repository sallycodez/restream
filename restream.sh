#!/bin/bash

# Replace this with your IPTV link
IPTV_URL="http://ugeen.live:8080/Ugeen_VIPArFrgF/jhfJ51/126"

# Livepush RTMP URL (Server + Stream Key)
LIVEPUSH_URL="rtmp://stream.livepush.io/live/rtmp_28e57109040945e9a603a035bb5ea433"

# Start streaming
ffmpeg -re -i "$IPTV_URL" -c copy -f flv "$LIVEPUSH_URL"


