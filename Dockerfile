# Use a lightweight Linux distribution as a base image
FROM alpine:3.14

# Install required packages
RUN apk update && apk add --no-cache bash curl

# Create a directory for our web server files
WORKDIR /app

# Copy the web server script into the container
COPY server.sh /app/server.sh

# Set execute permission for the script
RUN chmod +x /app/server.sh

# Expose port 80
EXPOSE 80

# Start the web server when the container starts
CMD ["./server.sh"]
