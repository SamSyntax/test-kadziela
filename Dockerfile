# Use an official Nginx image as the base image
FROM nginx:alpine

# Set working directory inside the container
WORKDIR /usr/share/nginx/html

# Remove default Nginx static files
RUN rm -rf ./*

# Copy your static website files into the container
COPY . .

# Expose port 80 to serve the static files
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
