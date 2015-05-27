# docker-rabbitmq

FROM: rabbitmq:3.5

Runs a RabbitMQ 3.5 node, optionally inside a cluster defined by the erlang cookie in RABBITMQ_COOKIE.

To enable clustering:
 - set RABBITMQ_COOKIE
 - expose ports 5672, 4369, 25672

Usage:
```
docker run \
    -e RABBITMQ_COOKIE=cookie \
    -p 5672:5672 \
    -p 4369:4369 \
    -p 25672:25672 \
    -d \
    packagepeer/rabbitmq
```
