FROM node:lts-alpine

# We will use dumb-init to help with PID 1 usage
RUN apk add dumb-init

# Set production env
ENV NODE_ENV production

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY --chown=node:node package*.json ./

# If you are building your code for production
RUN npm ci --only=production

# Bundle app source
COPY . .

# Expose port
EXPOSE 8080

# Run command
CMD ["dumb-init", "node", "server.js"]