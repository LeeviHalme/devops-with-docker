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
    # 2.7: mount a volume for the database
    volumes:
      - "./database:/var/lib/postgresql/data"
    environment:
      POSTGRES_PASSWORD: postgres

  proxy:
    image: nginx
    ports:
      - "80:80"
    volumes:
      - "./nginx.conf:/etc/nginx/nginx.conf"
```
