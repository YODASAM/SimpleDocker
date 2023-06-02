FROM golang:1.18.1-buster
WORKDIR /app1
COPY go.mod ./
# install dependencies
RUN go mod download
COPY main.go .
#RUN go build -o 
RUN go build -o /godocker
EXPOSE 8080
CMD [ "/godocker" ]

# FInally run  : docker run -d -p 8080:8081 --name SimpleDocker  godocker

# FROM golang:1.18.1-buster As stage
# WORKDIR /app
# COPY go.mod ./
# RUN go mod download
# COPY *.go .
# RUN CGO_ENABLED=0 GOOS=windows go build -o /opt/go-docker-multistage

# FROM alpine:latest
# COPY --from=build /opt/go-docker-multistage /opt/go-docker-multistage
# EXPOSE 8080
# ENTRYPOINT [ "/opt/go-docker-multistage" ]
