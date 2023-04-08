FROM python:3.9-alpine

RUN apk add --update --no-cache --upgrade postgresql-libs && \
  apk add --no-cache --virtual=build-dependencies build-base postgresql-dev && \
  apk add git && \
  pip install --no-cache-dir packaging psycopg2-binary migra && \
  pip3 install git+https://github.com/gjbadros/sqlbag && \
  apk del build-dependencies && \
  rm -rf /tmp/* /var/tmp/* /var/cache/apk/*

COPY docker-entrypoint.sh /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["migra", "--help"]
