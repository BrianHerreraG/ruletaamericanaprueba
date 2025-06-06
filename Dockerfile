FROM php:8.2-cli

# Instala extensiones si las necesitas (opcional)
# RUN docker-php-ext-install pdo pdo_mysql

# Copia el contenido del proyecto al contenedor
COPY . /app
WORKDIR /app

# Expone el puerto 8080 (Render lo requiere)
EXPOSE 8080

# Comando para iniciar el servidor PHP embebido
CMD ["php", "-S", "0.0.0.0:8080"]