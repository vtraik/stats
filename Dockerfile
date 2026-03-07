FROM gcc:13 AS builder
WORKDIR /stats
COPY . .
RUN gcc -o stats stats.c -pthread

FROM debian:bookworm-slim
COPY --from=builder /stats/stats /usr/local/bin/stats
CMD ["./stats", "-s", "10000"]
