FROM dockerfile/nginx

ADD server.crt /etc/nginx/certs/
ADD server.key /etc/nginx/certs/
ADD ca.crt /etc/nginx/certs/

RUN rm /etc/nginx/sites-available/default
ADD registry /etc/nginx/sites-available/
RUN ln -s /etc/nginx/sites-available/registry /etc/nginx/sites-enabled/

ADD registry.conf /etc/nginx/conf/
ADD registry.htpasswd /etc/nginx/

RUN ln -s /dev/stdout /var/log/nginx/access.log
RUN ln -s /dev/stderr /var/log/nginx/error.log

EXPOSE 80
EXPOSE 443

CMD ["nginx"]
