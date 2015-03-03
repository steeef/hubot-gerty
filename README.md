hubot-gerty
===========

Dockerfile and associated docker-compose.yml for Slack demo of Hubot, named
Gerty. Sets up Hubot to connect to Slack and interact with included containers
for various services like Jenkins, Nagios, and Graphite.

Create `hubot.env` to store your own Hubot environment variables in `KEY=value`
format.

Uses [SkyDock with SkyDNS](https://github.com/crosbymichael/skydock) to
register names of docker containers in a local domain name (".dev.docker.").
This gets around current Docker bi-directional link limitations. You must set
the environment variable `SKYDNS_NAMESERVERS` to a comma-delimited list of 
locally-accessible nameserver so that it may forward any requests it doesn't
recognize (i.e., anything outside of the ".dev.docker." domain). On a Linux host,
you could run it this way:
```
SKYDNS_NAMESERVERS=$(awk '/^nameserver/ {print $2}' /etc/resolv.conf | tr '\n' ',' | sed 's/,$/\n/') $2}') \
  docker-compose up
```

# Acknowledgements

Based on the repositories mentioned in [Nathaniel Hoag's blog
post](http://nathanielhoag.com/blog/2014/12/07/a-dockerized-slack-integrated-hubot/)
regarding how to set up Hubot with Docker.
