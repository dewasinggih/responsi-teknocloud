FROM debian:latest

RUN apt-get update && apt-get install nginx php-fpm php-mysql mariadb-server -y && rm /etc/nginx/sites-available/default /etc/nginx/sites-enabled/default 
RUN echo "\ndaemon off;" >> /etc/nginx/nginx.conf
COPY default /etc/nginx/sites-available/default
RUN ln -s /etc/nginx/sites-available/default /etc/nginx/sites-enabled/default
COPY index.php /var/www/html/
COPY sqlerror.txt sqlerror.txt
COPY mysqlscript.sh mysqlscript.sh
COPY user.sql user.sql
EXPOSE 80 3306
CMD service php7.3-fpm start && service mysql start && ./mysqlscript.sh && nginx
