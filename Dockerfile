FROM httpd:2.4
COPY ./index.html /usr/local/apache2/htdocs/
RUN chmod 777 -r /usr/local/apache2/htdocs/
