# Use an official Node.js runtime as a base image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install Node.js dependencies
RUN npm install

# Copy the rest of your application code to the working directory
COPY . .

# Expose a port that your Node.js application will listen on
EXPOSE 3000

# Define the command to run your Node.js application
CMD ["node", "server.js"]