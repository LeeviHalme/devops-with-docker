I used the deploy key to define the number of replicas for the compute service. This will create 10 identical containers for the compute service which turns the button green in the calculator service.

Only command needed to start the services is `docker compose up -d`.

docker-compose.yml:

```yml
version: "3.2"
services:
  calculator:
    image: devopsdockeruh/scaling-exercise-calculator
    ports:
      - 3000:3000
    container_name: calculator
  compute:
    image: devopsdockeruh/scaling-exercise-compute
    environment:
      - VIRTUAL_HOST=compute.localtest.me
    deploy:
      replicas: 10
  load-balancer:
    build: ./load-balancer
    image: load-balancer
    volumes:
      - /var/run/docker.sock:/tmp/docker.sock:ro
    ports:
      - 80:80
    container_name: load-balancer
```
