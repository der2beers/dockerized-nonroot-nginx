FROM nginx:latest

WORKDIR /

RUN adduser --system --disabled-login --no-create-home --group --uid 323232 nginx-docker

RUN chown 323232:323232 /var/cache/nginx && \
        chown -R 323232:323232 /var/log/nginx && \
        chown -R 323232:323232 /etc/nginx/conf.d
RUN touch /var/run/nginx.pid && \
        chown -R 323232:323232 /var/run/nginx.pid

EXPOSE 80

USER nginx-docker