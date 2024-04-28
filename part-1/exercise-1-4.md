I used a single command to install cURL and run the bash script inside the container:

```bash
docker run -it ubuntu bash -c 'apt update && apt install -y curl && while true; do echo "Input website:"; read website; echo "Searching.."; sleep 1; curl http://$website; done'
```
