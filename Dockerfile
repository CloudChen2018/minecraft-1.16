# FROM openjdk:8u275-jre-slim-buster

FROM bellsoft/liberica-openjdk-alpine:11

ENV TZ=Asia/Taipei

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

COPY minecraft-server /srv/minecraft

CMD java -Xmx16000M -Xms4000M -jar /srv/minecraft/forge-1.16.4-35.1.37.jar nogui
