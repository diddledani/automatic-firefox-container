FROM ubuntu:latest

RUN apt update && apt upgrade -y && \
    apt install -y firefox && \
    apt clean && rm -rf /var/lib/apt/lists

COPY entrypoint.sh /bin/entrypoint.sh

ENTRYPOINT [ "/bin/entrypoint.sh" ]

CMD [ "firefox" ]
