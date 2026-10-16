FROM ginuerzh/gost:latest

WORKDIR /app

COPY peers.txt /app/peers.txt
COPY entrypoint.sh /app/entrypoint.sh

RUN chmod +x /app/entrypoint.sh

EXPOSE 8080

ENTRYPOINT ["/app/entrypoint.sh"]
