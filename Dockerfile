# Imagen base oficial de Nginx
FROM nginx:alpine

# Copiar archivos necesarios
COPY nginx.conf.template /etc/nginx/templates/default.conf.template
COPY public/ /usr/share/nginx/html/
COPY start.sh /start.sh

# Dar permisos de ejecución al script
RUN chmod +x /start.sh

# Usar el script como punto de entrada
CMD ["sh", "/start.sh"]