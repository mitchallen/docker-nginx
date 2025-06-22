## Usage

### Trigger a build

To trigger a build and publish a new Docker image, use:

```sh
make publish
```

This will create a new version tag and trigger the GitHub Actions workflow to build and push the Docker image.

### Create and run container

```sh
docker run -p 3000:80 --name test-nginx ghcr.io/mitchallen/docker-nginx
```

To test:

Browse to: http://localhost:3000/

### Restart

```sh
docker start test-nginx
```

To stop:

```sh
docker stop test-nginx
```

### Cleanup

```sh
docker stop test-nginx
docker rm test-nginx
docker rmi ghcr.io/mitchallen/docker-nginx
```
