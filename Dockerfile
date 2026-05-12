FROM eclipse-temurin:21-jre-alpine

RUN apk update && \
    apk upgrade && \
    apk add --no-cache curl bash && \
    adduser --disabled-password --home /home/container container

COPY ./entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

WORKDIR /home/container

USER container

CMD ["/usr/local/bin/entrypoint.sh"]
