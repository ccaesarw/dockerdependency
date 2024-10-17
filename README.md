# dockerdependency

## Run

```code
docker-compose up --abort-on-container-exit
```

## Clean

### Stop all containers

```code
docker stop $(docker ps -a -q)
```

### List all containers

```code
docker ps -a
```

### Remove a container

```code
docker rm ID_or_Name ID_or_Name
```

### List all images

```code
docker images -a
```

### Remove an image

```code
docker rmi /{IMAGE ID}
```

This repository is a support for this [post](https://thecloudblog.net/post/integration-tests-in-azure-pipelines-with-asp.net-core-and-sql-on-docker/)
