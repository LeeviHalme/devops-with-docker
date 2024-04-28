# Start from the alpine image
FROM ubuntu:22.04

# Use /usr/src/app as our workdir. The following instructions will be executed in this location.
WORKDIR /usr/src/app

# Install cURL
RUN apt update && apt install -y curl

# Copy and exec script
COPY script.sh .
CMD ./script.sh