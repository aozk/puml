FROM java:8-alpine
LABEL maintainer "aozk <rm.hyphen.rf.space.slash@gmail.com>"

ENV PLANTUML_VERSION 1.2018.10
ENV LANG en_US.UTF-8
RUN apk add --no-cache graphviz ttf-droid ttf-droid-nonlatin curl \
    && apk add --no-cache \
        --repository https://nl.alpinelinux.org/alpine/edge/testing \
        font-ipa \
    && mkdir /app \
    && curl -L https://sourceforge.net/projects/plantuml/files/plantuml.${PLANTUML_VERSION}.jar/download -o /app/plantuml.jar \
    && apk del curl

ENTRYPOINT [ "java", "-jar", "/app/plantuml.jar" ]
CMD [ "-h" ]
