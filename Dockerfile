FROM httpd:2.4
COPY ./index.html /usr/local/apache2/htdocs/
RUN chmod -R 777  /usr/local/apache2/htdocs/
