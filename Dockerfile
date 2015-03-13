# DOCKER-VERSION        1.5.0

FROM steeef/hubot-demo:latest
MAINTAINER Stephen Price, stephen@stp5.net

ENV HUBOT_NAME gerty
ENV HUBOT_PORT 8001
ENV HUBOT_ADAPTER slack
ENV FILE_BRAIN_PATH /data
ENV GRAPHITE_SERVER trusty-graphite-standalone
ENV HUBOT_JENKINS_URL http://jenkins:8080
ENV HUBOT_RUNDECK_URL http://rundeck:4440
ENV PORT ${HUBOT_PORT}

VOLUME /data

EXPOSE ${HUBOT_PORT}

CMD bin/hubot
