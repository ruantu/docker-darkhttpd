FROM alpine:edge

ADD file /file/

RUN set -x \
  && apk add --no-cache \
      darkhttpd \
  && mkdir -p \
      /var/www/htdocs \
  && cat /file/entrypoint.sh > /entrypoint.sh \
  && chmod +x /entrypoint.sh \
  && rm -rf /file \
  && echo done


ENTRYPOINT [ "/entrypoint.sh" ]
CMD [ "darkhttpd", "/var/www/htdocs" ]
