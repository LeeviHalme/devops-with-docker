docker-compose.yml:

```yml
version: "3.8"

services:
  frontend:
    build:
      context: ../part-1
      dockerfile: 1-12.Dockerfile
    ports:
      - "5000:5000"

  backend:
    build:
      context: ../part-1
      dockerfile: 1-13.Dockerfile
    environment:
      - REDIS_HOST=cache
      - POSTGRES_HOST=db
    ports:
      - "8080:8080"

  cache:
    image: redis
    restart: unless-stopped

  db:
    image: postgres
    restart: always
    # set shared memory limit when using docker-compose
    shm_size: 128mb
    # or set shared memory limit when deploy via swarm stack
    #volumes:
    #  - type: tmpfs
    #    target: /dev/shm
    #    tmpfs:
    #      size: 134217728 # 128*2^20 bytes = 128Mb
    environment:
      POSTGRES_PASSWORD: postgres
```
