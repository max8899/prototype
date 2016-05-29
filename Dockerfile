FROM nginx:latest
COPY ./prototype /prototype
COPY ./proto.conf /etc/nginx/conf.d/
RUN chown nginx -R /prototype && \
    rm -rf /etc/nginx/conf.d/default.conf
