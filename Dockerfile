FROM openjdk:8u212-jre-alpine

ENV TZ=Asia/Taipei

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

COPY minecraft-server /srv/minecraft

CMD java -Xincgc -Xmx16000M -Xms4000M -jar /srv/minecraft/forge-1.16.4-35.1.13.jar nogui
