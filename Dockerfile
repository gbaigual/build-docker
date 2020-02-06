FROM debian:10
LABEL MANTAINER gb
ENV  DEBIAN_FRONTEND noninteractive
RUN set -uex;\
    apt update && apt -y install wget apache2; \ 
    apt -y install php-curl php-gd php-mbstring php-xml php-xmlrpc php-soap php-intl php-zip; \
    wget -O- https://wordpress.org/latest.tar.gz | tar zx -C /var/www/; \
    a2enmod rewrite ; \
    a2dismod status

#ADD wordpress.tar.gz /var/www
EXPOSE 80 
CMD ["apache2ctl","-D","FOREGROUND"]



#docker build -t test/wordpress-debian .
#docker run  --name wp-deb -h wp-deb -ti test/wordpress-debian

#WORKDIR /usr/src/wp

#https://wordpress.org/latest.tar.gz

