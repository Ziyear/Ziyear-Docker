FROM ziyear/nginx-jre:1.0

COPY ./conf/nginx/nginx.conf /usr/local/nginx/conf/nginx.conf
COPY ./conf/cert/ /usr/local/nginx/cert/

COPY ./app/ziyear-docker.jar /usr/app/app.jar

COPY ./sh/start.sh /

RUN bash -c 'touch /usr/app/app.jar' && \
    bash -c 'chmod u+x /start.sh'

WORKDIR /home/admin

VOLUME ["/home/admin/"]

ENTRYPOINT ["/start.sh"]