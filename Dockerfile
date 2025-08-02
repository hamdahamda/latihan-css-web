FROM nginx:alpine

# Copy semua file HTML ke dalam direktori default nginx
COPY . /usr/share/nginx/html

# Expose port yang dibutuhkan Cloud Run
EXPOSE 8080

# Override default nginx port dari 80 → 8080
RUN sed -i 's/80/8080/' /etc/nginx/conf.d/default.conf

CMD ["nginx", "-g", "daemon off;"]
