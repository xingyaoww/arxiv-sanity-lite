# Build docker image first using before running this script
# docker build -t arxiv-sanity .

docker stop arxiv-sanity || true && docker rm arxiv-sanity || true

docker run -d \
    -it \
    -p 5000:5000 \
    -v "$(pwd):/app" \
    --name arxiv-sanity \
    arxiv-sanity \
    /bin/bash /app/scripts/docker_entry.sh
