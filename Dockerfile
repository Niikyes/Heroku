FROM nginx:1.23-alpine

# Elimina configuraciones por defecto
RUN rm -rf /etc/nginx/conf.d/*

# Copia tu configuración de Nginx
COPY nginx.conf /etc/nginx/nginx.conf

# Copia tu HTML
COPY index.html /usr/share/nginx/html/

# Instala envsubst (para reemplazar variables)
RUN apk add --no-cache gettext

# Script para reemplazar $PORT y ejecutar Nginx
CMD ["sh", "-c", "envsubst < /etc/nginx/nginx.conf > /etc/nginx/nginx.conf.tmp && mv /etc/nginx/nginx.conf.tmp /etc/nginx/nginx.conf && nginx -g 'daemon off;'"]