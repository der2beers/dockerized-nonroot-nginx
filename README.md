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
This section is mandatory if you'll be mapping volumes as suggested in the docker run command below.

Edit $PATH_ON_HOST in the script executed below to customize the path for the docker volume mount on the host's file system.
```bash
sudo ./create-folder-structure-and-user.sh
```
Editing files located in the voume-mount on the host system requires permissions. Therefor add the user you'll login with on the host system to the group that is created within the create-folder-structure-and-user.sh.
```bash
sudo usermod -aG nginx-docker <your-username>
```

## create container
```bash
docker run -it -d --name nginx-nonroot -v /srv/nginx/html:/usr/share/nginx/html -v /srv/nginx/config:/etc/nginx -v /srv/nginx/logs:/var/log/nginx -p 5555:80 nginx-nonroot:latest
```
