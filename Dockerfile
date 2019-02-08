##########################################################################
# Dockerfile for configure your Docker container with NodeJS and MongoDB #
##########################################################################

# Set the image container
FROM node

# Information Metadata
LABEL maintainer="me@josejpr.com"
LABEL version="1.0"

# Create develop directory
RUN mkdir -p /opt/app

# Set develop directory
WORKDIR /opt/app

# Install all npm packages
COPY package.json .
RUN npm i --quiet

# Copy all node application
COPY . .

# Open app port 
EXPOSE 3000

# Run app
CMD node app.js