FROM ubuntu:18.04

LABEL version="0.1.0"
LABEL repository="http://github.com/convox.actions"
LABEL homepage="https://convox.com/convox"
LABEL maintainer="Convox <support@convox.com>"

LABEL "com.github.actions.name"="Convox Promote"
LABEL "com.github.actions.description"="Promote a previously built Release of on app on Convox"
LABEL "com.github.actions.icon"="cloud"
LABEL "com.github.actions.color"="blue"

RUN apt-get -qq update && apt-get -qq -y install curl

RUN curl -L https://convox.com/cli/linux/convox -o /tmp/convox \
    && mv /tmp/convox /usr/local/bin/convox \
    && chmod 755 /usr/local/bin/convox

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]