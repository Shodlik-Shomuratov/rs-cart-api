# Node version
FROM node:16

# Working directory
WORKDIR /usr/src/app

# Copy all files except files that are mentioned .dockerignore
COPY . .

# Install the packages
RUN npm install

# Build the application
RUN npm run build

# Run the file
CMD ["node", "dist/main.js"]

# Write the port
EXPOSE 4000:4000