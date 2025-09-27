# Base Ubuntu image
FROM ubuntu:22.04

# Install ffmpeg and curl
RUN apt-get update && apt-get install -y ffmpeg curl && rm -rf /var/lib/apt/lists/*

# Copy the restream script
COPY restream.sh /restream.sh
RUN chmod +x /restream.sh

# Run the restream script on container start
CMD ["/restream.sh"]
