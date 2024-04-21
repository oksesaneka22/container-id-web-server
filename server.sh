#!/bin/bash

# Get the container ID
CONTAINER_ID=$(hostname)

# Print the container ID
echo "Container ID: $CONTAINER_ID"

# Start a simple web server to display the container ID
echo -e "HTTP/1.1 200 OK\r\nContent-Type: text/plain\r\n\r\nContainer ID: $CONTAINER_ID" | nc -l -p 80
