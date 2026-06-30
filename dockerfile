FROM docker.n8n.io/n8nio/n8n:2.27.5

USER root

COPY --from=mwader/static-ffmpeg:8.1.1 --chmod=755 /ffmpeg /usr/local/bin/ffmpeg
COPY --from=mwader/static-ffmpeg:8.1.1 --chmod=755 /ffprobe /usr/local/bin/ffprobe

USER node
