# Nginx base image
FROM nginx:latest

# Nginx HTML directory
WORKDIR /usr/share/nginx

# Copy the local index.html file into the container
COPY ./index.html /usr/share/nginx/html

# Set permissions for the HTML file and the Nginx directory
RUN chmod 644 /usr/share/nginx/html/index.html && \
    chown -R nginx:nginx /usr/share/nginx

# Expose port 80 
EXPOSE 80

# Command to start Nginx
CMD ["nginx", "-g", "daemon off;"]