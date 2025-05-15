# Usa una imagen ligera de Nginx
FROM nginx:alpine

# Elimina la configuración por defecto de Nginx
RUN rm -rf /usr/share/nginx/html/*

# Copia tu archivo HTML al directorio de Nginx
COPY index.html /usr/share/nginx/html/

# Expone el puerto 80 (puerto por defecto de Nginx)
EXPOSE 80

# Comando para iniciar Nginx
CMD ["nginx", "-g", "daemon off;"]