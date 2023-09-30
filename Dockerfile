# Use an official Nginx runtime as a parent image
FROM nginx:latest

# Set the working directory to the Nginx web server directory
WORKDIR /usr/share/nginx/html

# Copy the static HTML files to the container
COPY index.html /usr/share/nginx/html

# Expose port 80 for the Nginx web server
EXPOSE 80

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
