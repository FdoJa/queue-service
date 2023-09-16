RABBITMQ_IMAGE = central-queue
CONTAINER_NAME = queue-service

build:
	docker build -t $(RABBITMQ_IMAGE) -f Dockerfile .
docker-rabbit:
	docker run -d --name $(CONTAINER_NAME) -p 8082:5672 -p 8081:15672 $(RABBITMQ_IMAGE)
stop:
	docker stop $(CONTAINER_NAME)
	docker rm $(CONTAINER_NAME)
