FROM alpine:latest

RUN apk --update --no-cache add openjdk8 bash git libstdc++

ADD . /app

RUN /app/gradlew bootRun

WORKDIR /app

CMD ["bash"]
