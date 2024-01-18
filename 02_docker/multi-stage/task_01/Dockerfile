FROM golang:1.21 as builder
WORKDIR /src
COPY ./hello.go /src/main.go
RUN go build -o /bin/hello ./main.go

FROM scratch
COPY --from=builder /bin/hello /bin/hello
CMD ["/bin/hello"]