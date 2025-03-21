# Utilisation de l'image officielle PHP avec Apache
FROM php:8.1-apache

# Installation des extensions nécessaires
RUN apt-get update && apt-get install -y libpng-dev libjpeg-dev libfreetype6-dev libzip-dev unzip git \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install gd pdo pdo_mysql zip \
    && a2enmod rewrite

# Copie du code de l'application dans le conteneur
COPY ./src /var/www/html/

# Définir le répertoire de travail pour Apache
WORKDIR /var/www/html

# Installer Composer (gestionnaire de dépendances PHP)
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer
