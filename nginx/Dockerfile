FROM nginx:stable



RUN apt-get update && \
    apt-get install -y \
        wget \
        curl \
        vim  \
        iputils-ping \
        && mkdir -p /data/var/logs/nginx  \
        && rm -rf /var/lib/apt/lists/*

# #nginx 
COPY ./conf/nginx.conf /etc/nginx/nginx.conf

# #order
COPY ./conf/configs/* /etc/nginx/configs/
# COPY ./service/* /etc/nginx/service/x

# #vhost
COPY ./template/* /etc/nginx/conf.d/template/


WORKDIR /etc/nginx