# --------------> The build image
FROM node:latest AS build

# Create app directory
WORKDIR /usr/src/app

# Copy files over
COPY package*.json /user/src/app/

# Run command using secrets
RUN --mount=type=secret,mode=0644,id=npmrc,target=/usr/src/app/.npmrc npm ci --only=production

# --------------> The production image
FROM node:lts-alpine

# We will use dumb-init to help with PID 1 usage
RUN apk add dumb-init
# Set production env
ENV NODE_ENV production

# Set user
USER node

# Set workdir
WORKDIR /usr/src/app

# Copy files as node user
COPY --chown=node:node --from=build /usr/src/app/node_modules /usr/src/app/node_modules
COPY --chown=node:node . /usr/src/app

# Run command
CMD ["dumb-init", "node", "server.js"]
