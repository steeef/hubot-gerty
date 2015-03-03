hubot-gerty
===========

Dockerfile and associated docker-compose.yml for Slack demo of Hubot, named
Gerty. Sets up Hubot to connect to Slack and interact with included containers
for various services like Jenkins, Nagios, and Graphite.

Create `hubot.env` to store your own Hubot environment variables in `KEY=value`
format.

Uses [SkyDock with SkyDNS](https://github.com/crosbymichael/skydock) to
register names of docker containers in a local domain name (".dev.docker.").
This gets around current Docker bi-directional link limitations.

# Acknowledgements

Based on the repositories mentioned in [Nathaniel Hoag's blog
post](http://nathanielhoag.com/blog/2014/12/07/a-dockerized-slack-integrated-hubot/)
regarding how to set up Hubot with Docker.
