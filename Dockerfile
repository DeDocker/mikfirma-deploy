FROM docker:stable

RUN apk add --no-cache curl py-pip python3-dev libffi-dev openssl-dev gcc libc-dev rust cargo make
RUN curl -o- https://raw.githubusercontent.com/manifoldco/manifold-cli/master/install.sh | sh
RUN pip install docker-compose
RUN ln -s /root/.manifold/bin/manifold /usr/bin/

SHELL ["/bin/sh"]
