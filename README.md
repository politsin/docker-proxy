# docker-proxy
##
cd /opt/docker-proxy

docker-compose up -d docker-proxy

git clone https://github.com/politsin/docker-proxy /opt/docker-proxy/

/opt/docker-proxy/run.pl

##
docker run --name docker-proxy -p 80:80 --rm -ti \
           -v /opt/nginx-proxy/nginx.conf:/etc/nginx/nginx.conf \
		   -v /opt/nginx-proxy/.passwd:/etc/nginx/.passwd:ro \
		   -v /opt/nginx-proxy/www:/var/www:ro  \
		   nginx:alpine /bin/sh
##
docker run --name docker-proxy -p 80:80 --rm -ti \
           -v /opt/nginx-proxy/www:/var/www:ro \
		   -v /opt/nginx-proxy/nginx.conf:/etc/nginx/nginx.conf \
		   -v /opt/nginx-proxy/ssl:/etc/nginx/ssl \
		   nginx:alpine 
