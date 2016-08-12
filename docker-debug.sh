#!/bin/bash

docker run --name nginx-proxy -p 80:80 --rm -ti \
           -v /opt/nginx-proxy/nginx.conf:/etc/nginx/nginx.conf \
		   -v /opt/nginx-proxy/.passwd:/etc/nginx/.passwd:ro \
		   -v /opt/nginx-proxy/www:/var/www:ro  \
		   nginx:alpine /bin/sh

docker run --name nginx-proxy -p 80:80 --rm -ti \
           -v /opt/nginx-proxy/www:/var/www:ro \
		   -v /opt/nginx-proxy/nginx.conf:/etc/nginx/nginx.conf \
		   -v /opt/nginx-proxy/ssl:/etc/nginx/ssl \
		   nginx:alpine 