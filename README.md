# Usage

## clone repository
```bash
https://github.com/der2beers/dockerized-nonroot-nginx.git
```

## build image
```bash
docker build . -t nginx-nonroot
```

## prepare host-system (optional)
Edit $PATH_ON_HOST in the script executed below to customize the path for the docker volume mount on the host's file system.
```bash
sudo ./create-folder-structure-and-user.sh
```

## create container
```bash
docker run -it -d --name nginx-nonroot -v /srv/nginx/html:/usr/share/nginx/html -v /srv/nginx/config:/etc/nginx -v /srv/nginx/logs:/var/log/nginx -p 5555:80 nginx-nonroot:latest
```