```docker run -it -d --name nginx-external -v /nginx/html:/usr/share/nginx/html:ro -v /nginx/config:/etc/nginx/. -v /nginx/logs:/var/log/nginx/. -p 5555:80 nginx:latest```

docker run -it -d --name nginx-external -v /home/to/nginx/html:/usr/share/nginx/html:ro -v /home/to/nginx/config-files:/etc/nginx/. -p 5555:80 -e "NGINX_HOST=https://pano.fetox.de"  nginx:latest
