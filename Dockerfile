# Use the official Node.js 14 image as the base
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the rest of the project files to the container
COPY . .

# Build the Next.js project
RUN npm run build

# Set the command to start the application
CMD ["npm", "start"]