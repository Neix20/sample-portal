FROM nginx:latest

WORKDIR /app

# Copy Config
COPY ./config/nginx/nginx.conf /etc/nginx/conf.d/default.conf

# Copy Everything
COPY ./public/ /usr/share/nginx/html/

# Copy Entrypoint
COPY ./entrypoint.sh /app

# Modify Permission
RUN chmod +x /app/entrypoint.sh

EXPOSE 80

# Run Program
ENTRYPOINT [ "./entrypoint.sh" ]