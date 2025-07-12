# Use Node.js 18 LTS
FROM node:18

# Set working directory
WORKDIR /usr/src/app

# Copy everything first
COPY . .

# Move backend files to working directory using find command
RUN find "Read Me/backend/" -type f -exec cp {} . \; && rm -rf "Read Me"

# Install dependencies
RUN npm install

# Expose port 5000
EXPOSE 5000

# Start the app
CMD ["npm", "start"] 