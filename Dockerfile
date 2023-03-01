# https://luppeng.wordpress.com/2020/02/28/install-and-start-postgresql-on-alpine-linux/
# https://stackoverflow.com/questions/49955097/how-do-i-add-a-user-when-im-using-alpine-as-a-base-image

FROM alpine:3.10

RUN addgroup -S postgres &&\
  adduser -S postgres -G postgres

RUN apk update &&\
  apk add postgresql-client initdb &&\
  mkdir /run/postgresql &&\
  chown postgres:postgres /run/postgresql

RUN mkdir -p /var/lib/postgresql/data &&\
  chmod 0700 /var/lib/postgresql/data &&\
  initdb -D /var/lib/postgresql/data

USER postgres


EXPOSE 5432
