FROM php:8.1.10-apache-buster

# Fix debconf warnings upon build
ARG DEBIAN_FRONTEND=noninteractive

# Run apt update
RUN apt update

# Enable mod_rewrite
RUN a2enmod rewrite

# Install GIT
RUN apt -y install git

COPY ./pre-start.sh /bin/pre-start.sh
RUN chmod +x /bin/pre-start.sh
CMD /bin/pre-start.sh
