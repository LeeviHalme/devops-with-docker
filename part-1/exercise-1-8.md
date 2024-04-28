Dockerfile:

```dockerfile
FROM devopsdockeruh/simple-web-service:alpine
CMD server
```

Commands:

```bash
docker build -f 1-8.Dockerfile . -t web-server
docker run -it web-server
```
