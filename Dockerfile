# Use Node.js 18 LTS
FROM node:18

# Set working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the backend source code
COPY . .

# Expose port 5000
EXPOSE 5000

# Start the app
CMD ["npm", "start"] 