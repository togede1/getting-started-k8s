FROM node:current-slim

LABEL MAINTAINER=tony_gedeon@manulife.ca

# Copy source code to /src in container
COPY . /src

# Install app and dependencies into /src in container
RUN cd /src; npm install

# Document the port the app listens on
EXPOSE 8080

# Run this command (starts the app) when the container starts
CMD cd /src && node ./app.js
