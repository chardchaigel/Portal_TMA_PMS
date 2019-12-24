FROM httpd:2.4.41

RUN apt update && apt upgrade -y && apt install git nodejs npm curl vim -y
# install latest npm
#RUN curl https://www.npmjs.com/install.sh | sh
# install Angular
#RUN npm install -g @angular/cli

#COPY ./sites-available/geldomain.conf /etc/apache2/sites-available/geldomain.conf
RUN rm /usr/local/apache2/conf/extra/httpd-vhosts.conf
COPY ./sites-available/geldomain.conf /usr/local/apache2/conf/extra/httpd-vhosts.conf

#RUN mkdir -p /var/www/webapps/html
#WORKDIR /var/www/webapps/html
#RUN mkdir -p /usr/local/apache2/htdocs/webapps/html
WORKDIR /usr/local/apache2/htdocs
RUN git clone https://github.com/iimisgel/portalGEL.git portal

WORKDIR /usr/local/apache2/htdocs/portal
#RUN npm install && ng build --prod

EXPOSE 80
