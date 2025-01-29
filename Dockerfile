FROM ubuntu:latest

EXPOSE 8000

WORKDIR /app

ENV HOST=localhost DBPORT=5432
ENV USER=postgres PASSWORD=root DBNAME=root

COPY ./main main

RUN chmod +x main

COPY ./templates/ templates/

CMD ["./main"]

