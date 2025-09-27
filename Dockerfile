FROM ubuntu:22.04

RUN apt-get update && apt-get install -y ffmpeg curl && rm -rf /var/lib/apt/lists/*

COPY restream.sh /restream.sh
RUN chmod +x /restream.sh

CMD ["/restream.sh"]
