adduser --system --disabled-login --no-create-home --group nginx
mkdir /nginx
mkdir /nginx/config
mkdir /nginx/html
mkdir /nginx/logs
chown -R to:nginx /nginx
chmod -R g+r /nginx
chmod -R g-w /nginx
chmod -R o+r /nginx
chmod -R o+w /nginx
chmod -R u-w /nginx
cp nginx-defalut-conf.gz /nginx/config
tar -xzvf /nginx/config/nginx-defalut-conf.gz --directory=/nginx/config
