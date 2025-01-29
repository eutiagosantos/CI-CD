FROM ubuntu:latest

EXPOSE 8000

WORKDIR /app

ENV HOST=host.docker.internal DBPORT=5432
ENV USER=postgres PASSWORD=root DBNAME=root

COPY ./main main

CMD ["./main", "-port", "8000"]

