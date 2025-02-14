FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    cmake \
    g++ \
    make \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY . .

RUN mkdir -p build && cd build && \
    cmake .. && \
    make

# Definieer de entrypoint
CMD ["/app/build/hello_world"]