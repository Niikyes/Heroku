FROM nginx:alpine

# Copia la configuración de Nginx
COPY nginx.conf /etc/nginx/nginx.conf

# Copia los archivos estáticos (index.html, CSS, JS, etc.)
COPY index.html /usr/share/nginx/html/
# Si tienes más archivos, agrégalos así:
# COPY ./css /usr/share/nginx/html/css
# COPY ./js /usr/share/nginx/html/js

# No es necesario EXPOSE si usas Heroku (ignora el puerto aquí)
# Heroku usará $PORT automáticamente

CMD ["nginx", "-g", "daemon off;"]