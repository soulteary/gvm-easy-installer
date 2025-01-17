FROM alpine:3.20 AS builder
RUN apk add --no-cache git
WORKDIR /code
RUN git clone https://github.com/soulteary/gvm.git --depth 1

FROM alpine:3.20
COPY --from=builder /code/gvm /gvm
CMD ["tail", "-f", "/dev/null"]
