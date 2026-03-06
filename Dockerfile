FROM gcc:13

WORKDIR /stats

COPY stats.c .

RUN gcc -o stats stats.c -pthread

CMD ["./stats", "-s", "10000"]
