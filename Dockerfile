# Use the official Node.js 16 base image
FROM node:16

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json files
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the rest of the application source code
COPY . .

# Expose port 3000 for the API
EXPOSE 3000

# Start the API server
CMD [ "npm", "start" ]
