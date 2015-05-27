#!/bin/bash

if [ -n "${RABBITMQ_COOKIE}" ]; then
  RUN echo "${RABBITMQ_COOKIE}" > /var/lib/rabbitmq/.erlang.cookie
  RUN chown rabbitmq:rabbitmq /var/lib/rabbitmq/.erlang.cookie
  RUN chmod 400 /var/lib/rabbitmq/.erlang.cookie
fi

exec /docker-entrypoint.sh rabbitmq-server
