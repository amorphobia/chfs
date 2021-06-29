FROM alpine:latest

LABEL maintainer="Xuesong Peng <@amorphobia>"

ENV SHARE=/home \
    FILEBOX=filebox \
    USER=root \
    PASS=admin \
    MASK=rwd

COPY chfs /

EXPOSE 80

CMD ["/bin/sh", "-c", "/chfs --rule=\"::r|$USER:$PASS:r:$FILEBOX:$MASK\" --path=$SHARE"]