FROM alpine

RUN apk update && apk add caddy
RUN adduser -D -g '' http
RUN mkdir /www
COPY Caddyfile /Caddyfile

USER http
WORKDIR /www
CMD /usr/sbin/caddy -conf /Caddyfile
