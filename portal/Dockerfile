FROM httpd:2.4.41

RUN apt update && apt upgrade -y && apt install git nodejs npm curl -y
# install latest npm
RUN curl https://www.npmjs.com/install.sh | sh
# install Angular
RUN npm install -g @angular/cli

COPY ./sites-available/geldomain.conf /etc/apache2/sites-available/geldomain.conf

RUN mkdir -p /var/www/webapps/html
WORKDIR /var/www/webapps/html
RUN git clone https://github.com/sasathornari/portalGEL.git portal

WORKDIR /var/www/webapps/html/portal
RUN npm install && ng build --prod

EXPOSE 80
