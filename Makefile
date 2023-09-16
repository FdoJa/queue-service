RABBITMQ_IMAGE = central-queue

build:
    docker build -t $(RABBITMQ_IMAGE) -f Dockerfile.rabbitmq .

run:
    docker run -d --name rabbitmq -p 5672:5672 -p 15672:15672 $(RABBITMQ_IMAGE)

stop:
    docker stop rabbitmq
    docker rm rabbitmq