FROM alpine:latest
RUN apk add --no-cache janet
WORKDIR /app
COPY app.janet .
CMD ["janet", "app.janet"]