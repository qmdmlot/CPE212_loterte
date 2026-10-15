FROM ubuntu:22.04

# prevent installation prompts
ENV DEBIAN_FRONTEND=noninteractive

# install nginx, mariadb, and clean up apt cache
RUN apt-get update && \
    apt-get install -y nginx mariadb-server mariadb-client && \
    rm -rf /var/lib/apt/lists/*

# copy and set execution permissions for startup script
COPY start.sh /start.sh
RUN chmod +x /start.sh

#nginx and mariadb ports
EXPOSE 80 3306

CMD ["/start.sh"]

