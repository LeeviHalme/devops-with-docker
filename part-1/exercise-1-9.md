I used the following command to start the web service and mount the working directory inside the container to current working directory:

```bash
docker run -v "./text.log:/usr/src/app/text.log" devopsdockeruh/simple-web-service
```
