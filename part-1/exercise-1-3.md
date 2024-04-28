```
docker container run -d devopsdockeruh/simple-web-service:ubuntu
docker ps
```

```
CONTAINER ID   IMAGE                                      COMMAND                 CREATED         STATUS         PORTS     NAMES
0726c7fc74bc   devopsdockeruh/simple-web-service:ubuntu   "/usr/src/app/server"   2 minutes ago   Up 2 minutes             musing_johnson
```

```
docker exec -it 0726c7fc74bc bash
ls
tail -f ./text.log
```

```
2024-04-18 07:54:12 +0000 UTC
2024-04-18 07:54:14 +0000 UTC
2024-04-18 07:54:16 +0000 UTC
2024-04-18 07:54:18 +0000 UTC
2024-04-18 07:54:20 +0000 UTC
Secret message is: 'You can find the source code here: https://github.com/docker-hy'
2024-04-18 07:54:22 +0000 UTC
2024-04-18 07:54:24 +0000 UTC
2024-04-18 07:54:26 +0000 UTC
2024-04-18 07:54:28 +0000 UTC
2024-04-18 07:54:30 +0000 UTC
Secret message is: 'You can find the source code here: https://github.com/docker-hy'
2024-04-18 07:54:32 +0000 UTC
2024-04-18 07:54:34 +0000 UTC
2024-04-18 07:54:36 +0000 UTC
2024-04-18 07:54:38 +0000 UTC
2024-04-18 07:54:40 +0000 UTC
Secret message is: 'You can find the source code here: https://github.com/docker-hy'
2024-04-18 07:54:42 +0000 UTC
2024-04-18 07:54:44 +0000 UTC
2024-04-18 07:54:46 +0000 UTC
2024-04-18 07:54:48 +0000 UTC
2024-04-18 07:54:50 +0000 UTC
Secret message is: 'You can find the source code here: https://github.com/docker-hy'
2024-04-18 07:54:52 +0000 UTC
2024-04-18 07:54:54 +0000 UTC
2024-04-18 07:54:56 +0000 UTC
2024-04-18 07:54:58 +0000 UTC
2024-04-18 07:55:00 +0000 UTC
Secret message is: 'You can find the source code here: https://github.com/docker-hy'
2024-04-18 07:55:02 +0000 UTC
2024-04-18 07:55:04 +0000 UTC
2024-04-18 07:55:06 +0000 UTC
2024-04-18 07:55:08 +0000 UTC
2024-04-18 07:55:10 +0000 UTC
Secret message is: 'You can find the source code here: https://github.com/docker-hy'
2024-04-18 07:55:12 +0000 UTC
2024-04-18 07:55:14 +0000 UTC
2024-04-18 07:55:16 +0000 UTC
2024-04-18 07:55:18 +0000 UTC
2024-04-18 07:55:20 +0000 UTC
Secret message is: 'You can find the source code here: https://github.com/docker-hy'
2024-04-18 07:55:22 +0000 UTC
2024-04-18 07:55:24 +0000 UTC
2024-04-18 07:55:26 +0000 UTC
2024-04-18 07:55:28 +0000 UTC
2024-04-18 07:55:30 +0000 UTC
Secret message is: 'You can find the source code here: https://github.com/docker-hy'
2024-04-18 07:55:32 +0000 UTC
2024-04-18 07:55:34 +0000 UTC
2024-04-18 07:55:36 +0000 UTC
2024-04-18 07:55:38 +0000 UTC
2024-04-18 07:55:40 +0000 UTC
Secret message is: 'You can find the source code here: https://github.com/docker-hy'
2024-04-18 07:55:42 +0000 UTC
2024-04-18 07:55:44 +0000 UTC
2024-04-18 07:55:46 +0000 UTC
2024-04-18 07:55:48 +0000 UTC
2024-04-18 07:55:50 +0000 UTC
Secret message is: 'You can find the source code here: https://github.com/docker-hy'
2024-04-18 07:55:52 +0000 UTC
2024-04-18 07:55:54 +0000 UTC
2024-04-18 07:55:56 +0000 UTC
2024-04-18 07:55:58 +0000 UTC
2024-04-18 07:56:00 +0000 UTC
Secret message is: 'You can find the source code here: https://github.com/docker-hy'
2024-04-18 07:56:02 +0000 UTC
2024-04-18 07:56:04 +0000 UTC
2024-04-18 07:56:06 +0000 UTC
2024-04-18 07:56:08 +0000 UTC
2024-04-18 07:56:10 +0000 UTC
Secret message is: 'You can find the source code here: https://github.com/docker-hy'
2024-04-18 07:56:12 +0000 UTC
2024-04-18 07:56:15 +0000 UTC
2024-04-18 07:56:17 +0000 UTC
2024-04-18 07:56:19 +0000 UTC
2024-04-18 07:56:21 +0000 UTC
Secret message is: 'You can find the source code here: https://github.com/docker-hy'
2024-04-18 07:56:23 +0000 UTC
2024-04-18 07:56:25 +0000 UTC
2024-04-18 07:56:27 +0000 UTC
2024-04-18 07:56:29 +0000 UTC
2024-04-18 07:56:31 +0000 UTC
Secret message is: 'You can find the source code here: https://github.com/docker-hy'
2024-04-18 07:56:33 +0000 UTC
2024-04-18 07:56:35 +0000 UTC
2024-04-18 07:56:37 +0000 UTC
2024-04-18 07:56:39 +0000 UTC
2024-04-18 07:56:41 +0000 UTC
Secret message is: 'You can find the source code here: https://github.com/docker-hy'
2024-04-18 07:56:43 +0000 UTC
2024-04-18 07:56:45 +0000 UTC
2024-04-18 07:56:47 +0000 UTC
2024-04-18 07:56:49 +0000 UTC
2024-04-18 07:56:51 +0000 UTC
Secret message is: 'You can find the source code here: https://github.com/docker-hy'
2024-04-18 07:56:53 +0000 UTC
2024-04-18 07:56:55 +0000 UTC
2024-04-18 07:56:57 +0000 UTC
2024-04-18 07:56:59 +0000 UTC
2024-04-18 07:57:01 +0000 UTC
Secret message is: 'You can find the source code here: https://github.com/docker-hy'
2024-04-18 07:57:03 +0000 UTC
2024-04-18 07:57:05 +0000 UTC
2024-04-18 07:57:07 +0000 UTC
2024-04-18 07:57:09 +0000 UTC
2024-04-18 07:57:11 +0000 UTC
Secret message is: 'You can find the source code here: https://github.com/docker-hy'
2024-04-18 07:57:13 +0000 UTC
2024-04-18 07:57:15 +0000 UTC
2024-04-18 07:57:17 +0000 UTC
2024-04-18 07:57:19 +0000 UTC
2024-04-18 07:57:21 +0000 UTC
Secret message is: 'You can find the source code here: https://github.com/docker-hy'
2024-04-18 07:57:23 +0000 UTC
2024-04-18 07:57:25 +0000 UTC
2024-04-18 07:57:27 +0000 UTC
2024-04-18 07:57:29 +0000 UTC
2024-04-18 07:57:31 +0000 UTC
Secret message is: 'You can find the source code here: https://github.com/docker-hy'
2024-04-18 07:57:33 +0000 UTC
2024-04-18 07:57:35 +0000 UTC
2024-04-18 07:57:37 +0000 UTC
2024-04-18 07:57:39 +0000 UTC
2024-04-18 07:57:41 +0000 UTC
Secret message is: 'You can find the source code here: https://github.com/docker-hy'
2024-04-18 07:57:43 +0000 UTC
2024-04-18 07:57:45 +0000 UTC
2024-04-18 07:57:47 +0000 UTC
2024-04-18 07:57:49 +0000 UTC
```
