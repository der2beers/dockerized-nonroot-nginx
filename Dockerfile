FROM nginx:latest

WORKDIR /

#TODO
#holds the files the webserver should serve
ENV web_server_files="/nginx/html/"

#TODO
#holds the nginx config files
ENV web_server_conf="/nginx/conf/"

VOLUME $web_server_files /usr/share/nginx/html
VOLUME $web_server_conf /etc/nginx
 

RUN chown -R nginx:nginx /var/cache/nginx && \
        chown -R nginx:nginx /var/log/nginx && \
        chown -R nginx:nginx /etc/nginx/conf.d
RUN touch /var/run/nginx.pid && \
        chown -R nginx:nginx /var/run/nginx.pid

EXPOSE 80

USER nginx