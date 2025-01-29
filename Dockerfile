FROM ubuntu:latest

EXPOSE 8000

WORKDIR /app

ENV HOST=172.22.93.186 DBPORT=5432
ENV USER=postgres PASSWORD=root DBNAME=root

COPY ./main main

CMD ["./main"]

