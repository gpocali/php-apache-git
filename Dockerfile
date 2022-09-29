FROM php:7.2-apache

# Fix debconf warnings upon build
ARG DEBIAN_FRONTEND=noninteractive

# Run apt update
RUN apt update

# Enable mod_rewrite
RUN a2enmod rewrite

# Install GIT
RUN apt -y install git

