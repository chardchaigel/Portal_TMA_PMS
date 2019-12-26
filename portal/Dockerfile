FROM httpd:2.4.41

RUN apt update && apt upgrade -y && apt install git nodejs npm curl vim -y
# install latest npm
#RUN curl https://www.npmjs.com/install.sh | sh
# install Angular
#RUN npm install -g @angular/cli

#COPY ./sites-available/geldomain.conf /etc/apache2/sites-available/geldomain.conf
RUN rm /usr/local/apache2/conf/extra/httpd-vhosts.conf
COPY ./sites-available/geldomain.conf /usr/local/apache2/conf/extra/httpd-vhosts.conf

RUN rm -r /usr/local/apache2/htdocs/*
COPY ./portal /usr/local/apache2/htdocs/portal

RUN sed -i \
  's/#LoadModule rewrite_module modules\/mod_rewrite.so/LoadModule rewrite_module modules\/mod_rewrite.so/g' \
  /usr/local/apache2/conf/httpd.conf

RUN sed -i '/<Directory "\/usr\/local\/apache2\/htdocs">/a### Rewrite rule was written from the Dockerfile when building the image ###\n\
    DirectoryIndex index.html\n\
    RewriteEngine on\n\
    RewriteCond %{REQUEST_FILENAME} -s [OR]\n\
    RewriteCond %{REQUEST_FILENAME} -d\n\
    RewriteRule ^.*$ - [NC,L]\n\
    RewriteRule ^(.*) index.html [NC,L]\n' \
  /usr/local/apache2/conf/httpd.conf

RUN sed -i '/<Files "\.ht\*">/,/<\/Files>/c# This was commented out from the Dockerfile\n# <Files ".ht*">\n#     Require all denied\n# <\/Files>' \
  /usr/local/apache2/conf/httpd.conf

RUN sed -i 's/#Include conf\/extra\/httpd-vhosts.conf/Include conf\/extra\/httpd-vhosts.conf/g' \
    /usr/local/apache2/conf/httpd.conf

#RUN mkdir -p /var/www/webapps/html
#WORKDIR /var/www/webapps/html
#RUN mkdir -p /usr/local/apache2/htdocs/webapps/html
WORKDIR /usr/local/apache2/htdocs/portal
#RUN git clone https://github.com/sasathornari/portalGEL.git portal
#RUN git clone https://github.com/iimisgel/portalGEL.git portal
#RUN mv portal/* ./
#RUN rm -rf portal

#WORKDIR /usr/local/apache2/htdocs/portal
#RUN ng update 
#RUN no | npm update 
#RUN npm install 
#RUN ng build --prod

EXPOSE 80