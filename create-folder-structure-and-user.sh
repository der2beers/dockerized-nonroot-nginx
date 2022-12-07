PATH_ON_HOST=/srv/nginx

adduser --system --disabled-login --no-create-home --group --uid 323232 nginx-docker
mkdir -p $PATH_ON_HOST/config
mkdir $PATH_ON_HOST/html
mkdir $PATH_ON_HOST/logs
chown -R 323232:323232 $PATH_ON_HOST
chmod -R g+rwx $PATH_ON_HOST
cp nginx-default-conf.gz $PATH_ON_HOST/config
tar -xzvf $PATH_ON_HOST/config/nginx-default-conf.gz --directory=$PATH_ON_HOST/config
