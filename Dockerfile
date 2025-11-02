# Base image
FROM node:24-alpine

# Working directory
WORKDIR /app

# Install dependencies
COPY package*.json ./
RUN npm install
RUN npm install

# Copy source code
COPY . .

# Expose port
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
