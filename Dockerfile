FROM alpine

RUN apk update && apk add caddy
RUN adduser -D -g '' http
RUN mkdir /www
COPY Caddyfile /Caddyfile

EXPOSE 8080
USER http
WORKDIR /www
CMD /usr/sbin/caddy -conf /Caddyfile
