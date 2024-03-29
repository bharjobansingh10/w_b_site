# Use an official Node runtime as a base image
FROM node:21.6.0-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the local files to the container
COPY . .

# Build the React app
RUN npm run build

# Expose port 3000
EXPOSE 3000

# Define environment variable
ENV REACT_APP_API_URL=http://localhost:7775

# Command to run the application
CMD ["npm", "start"]
