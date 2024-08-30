FROM rabbitmq:3-management-alpine

EXPOSE 5672
EXPOSE 15672

COPY ./prod.conf /etc/rabbitmq/rabbitmq.conf
RUN rabbitmq-plugins enable rabbitmq_management