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
    ports:
      - "8080:8080"
```
