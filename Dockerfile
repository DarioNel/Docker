FROM ubuntu

RUN apt update 

RUN apt upgrade -y

RUN apt install apache2 php -y

RUN apt install libapache2-mod-php php-mysql php-xml php-zip php-gd nano -y

RUN chown -R www-data:www-data /var/www/html/

RUN chmod -R 755 /var/www/html/

EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]
