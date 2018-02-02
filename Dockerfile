FROM nimmis/apache-php5:latest
MAINTAINER Ethan Lin

WORKDIR /

RUN apt-get update \
    && apt-get install -y --no-install-recommends unzip wget git

WORKDIR /var/www/

RUN wget https://github.com/supra5588/ecshop/archive/master.zip -O ./temp.zip \
    && unzip ./temp.zip \
    && cp -R ./ecshop-master/upload/. /var/www/html/ \
    && rm ./temp.zip \
    && rm -R ./ecshop-master \
    && chmod 777 -R html \
    && rm ./html/index.html \
