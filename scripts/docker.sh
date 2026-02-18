# Build Docker
docker build -t txe1/portal-simple -f ./config/docker/Dockerfile .

# Run Docker
docker run --name portal01 -p 3000:80 -d txe1/portal-simple

# Run Docker with environment variables
docker run --name portal01 -p 3000:80 -d -e TITLE="Hello, Joyce" txe1/portal-simple

# Remove Docker
docker rm -f portal01

# Push Docker
docker push txe1/portal-simple

# Exec Container
docker exec -it portal01 cat /usr/share/nginx/html/config.js