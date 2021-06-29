FROM alpine:latest

LABEL maintainer="Xuesong Peng <@amorphobia>"

ENV SHARE=/home \
    USER=root \
    PASS=admin \
    MASK=rwd

COPY chfs /

EXPOSE 80

CMD ["/bin/sh", "-c", "/chfs --rule=\"::r|$USER:$PASS:$MASK\" --path=$SHARE"]