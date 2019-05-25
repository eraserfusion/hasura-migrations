FROM alpine

RUN apk update && apk add bash curl

RUN curl -L https://github.com/hasura/graphql-engine/raw/master/cli/get.sh | bash

COPY . .

EXPOSE 9695

CMD [ "hasura", "console", "--endpoint", "http://graphql-engine:8080", "--address", "0.0.0.0", "--no-browser" ]
