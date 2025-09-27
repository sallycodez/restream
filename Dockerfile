FROM ubuntu:22.04

# Install ffmpeg and curl
RUN apt-get update && apt-get install -y ffmpeg curl && rm -rf /var/lib/apt/lists/*

# Copy the restream script into the container
COPY restream.sh /restream.sh
RUN chmod +x /restream.sh

# Run the script when container starts
CMD ["/restream.sh"]
