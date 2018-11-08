# Define base image
FROM node:8

# Set Working Directory
WORKDIR /app

# Copy package.json file from current directory to working directory
ADD package.json /app

# Install NPM packages
RUN npm install

# Copy all application files from local directory to working directory
ADD . /app

# Open port where app will be listening
EXPOSE 3000

# Start application
CMD ["npm", "start"]

