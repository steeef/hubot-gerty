# DOCKER-VERSION        1.5.0

FROM steeef/hubot-demo:latest
MAINTAINER Stephen Price, stephen@stp5.net

ENV HUBOT_PORT 8001
ENV HUBOT_ADAPTER slack
ENV PORT ${HUBOT_PORT}

VOLUME /data

EXPOSE ${HUBOT_PORT}

CMD bin/hubot
