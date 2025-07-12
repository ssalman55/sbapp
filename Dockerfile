# Use Node.js 18 LTS
FROM node:18

# Set working directory to backend
WORKDIR /usr/src/app

# Copy the backend directory (using .dockerignore to filter)
COPY . .

# Install dependencies
RUN npm install

# Expose port 5000
EXPOSE 5000

# Start the app
CMD ["npm", "start"] 