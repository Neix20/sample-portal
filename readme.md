
# Nginx Debug Container

Simple, minimal Nginx container used to quickly debug static sites and nginx configuration locally, in Docker Compose, or in Kubernetes.

## Key features

- Override the HTML page title at runtime with the `Title` environment variable.

- Small, focused image and a helper script at `./scripts/docker.sh` for building and running.

## Quick start

- Build Manually:

```sh
docker build -t nginx-debug .
```

- Run locally (example):

```sh
docker run --rm -e Title="My Debug Title" -p 8080:80 nginx-debug
```

### Docker Compose

Add a service to your `docker-compose.yml`:

```yaml
version: '3'
services:
	nginx-debug:
		build: .
		image: nginx-debug
		ports:
			- "8080:80"
		environment:
			- Title=Compose Debug
```

## Files of interest

- `./scripts/docker.sh` - build/run helper referenced above
- `entrypoint.sh` - container entrypoint used at runtime
- `config/nginx/nginx.conf` - nginx configuration
- `public/index.html` and `public/config.js` - static site served by the container

## Notes

- The `Title` environment variable is injected at container start so you can change the displayed page title without rebuilding the image.

- This image is intended for debugging and development, not production use.
