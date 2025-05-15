FROM nginx:alpine

# Elimina la configuración por defecto de Nginx
RUN rm /etc/nginx/conf.d/default.conf

# Copia tu configuración personalizada
COPY nginx.conf /etc/nginx/nginx.conf

# Copia tus archivos estáticos
COPY index.html /usr/share/nginx/html/

# Expón el puerto (aunque Heroku lo ignorará)
EXPOSE 8080

CMD ["sh", "-c", "nginx -g 'daemon off;'"]