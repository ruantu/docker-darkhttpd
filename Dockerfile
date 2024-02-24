FROM alpine:edge

RUN set -x \
  && apk add --no-cache \
      darkhttpd \
  && mkdir -p \
      /var/www/htdocs \
  && echo done

CMD [ "darkhttpd", "/var/www/htdocs" ]
