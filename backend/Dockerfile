# Use Node.js LTS
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy dependency files first (better caching)
COPY package.json package-lock.json* ./

# Install dependencies
RUN npm install

# Copy rest of the backend code
COPY . .

# Expose backend port (change if your app uses a different one)
EXPOSE 5000

# Start the server
CMD ["node", "server.js"]
