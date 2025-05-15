FROM nginx:1.23-alpine

# Elimina configuraciones por defecto conflictivas
RUN rm -rf /etc/nginx/conf.d/*

# Copia tu configuración personalizada
COPY nginx.conf /etc/nginx/nginx.conf

# Copia tus archivos estáticos
COPY index.html /usr/share/nginx/html/
# Si tienes más archivos:
# COPY assets/ /usr/share/nginx/html/assets/

# Expón el puerto (Heroku usará $PORT)
EXPOSE 8080

# Comando de inicio mejorado
CMD ["sh", "-c", "exec nginx -g 'daemon off;'"]