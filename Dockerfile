FROM golang:1.19-alpine
RUN mkdir /app
COPY . /app
WORKDIR /app
RUN go build -o server .
VOLUME [ "/app/files" ]
ENTRYPOINT [ "/app/server" ]
CMD [ "-logtype", "json" ]
