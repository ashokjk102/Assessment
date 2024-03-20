# Base image
FROM node:14

# Install the http-server package
RUN npm install -g http-server

# Set the working directory to data/app
WORKDIR data/app

# Create directory
RUN mkdir -p /data/app

# Expose the port your app is running on
EXPOSE 3000

# Command to start application
CMD ["http-server", "-p", "3000"]