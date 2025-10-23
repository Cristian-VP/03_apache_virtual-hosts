FROM httpd:2.4

COPY apache_config/ /usr/local/apache2/conf/extra/

COPY sites/ /usr/local/apache2/htdocs/

# Elminar el archivo index.html por defecto si existe
RUN test -f /usr/local/apache2/htdocs/index.html && rm -f /usr/local/apache2/htdocs/index.html || true


