# Use official Node.js LTS image
FROM node:20

# Set working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy all project files
COPY . .

# Expose port (same as your app)
EXPOSE 3000

# Environment variable (optional default)
ENV PORT=3000
ENV MONGO_URI=mongodb://mongo:27017/vegetable_order_app

# Start the app
CMD ["node", "app.js"]
