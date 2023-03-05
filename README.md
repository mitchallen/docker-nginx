
## Usage

### Trigger a build

Be sure to increment the tag each time.

```sh
git checkout main
git tag v1.0.0
git push origin --tags
```

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
