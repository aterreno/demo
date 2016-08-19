FROM alpine:latest

RUN apk --update --no-cache add openjdk8 bash git libstdc++

ADD . /app
WORKDIR /app

RUN /app/gradlew build

CMD ["bash"]
