# Base image
FROM node:18

# Set working directory inside container
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all source code
COPY . .

# Expose app port
EXPOSE 3000

# Start the app
CMD ["node", "app.js"]

