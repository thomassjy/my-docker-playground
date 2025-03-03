# Use a minimal runtime image
FROM node:18-alpine AS runner

WORKDIR /app

# Copy prebuilt Next.js app from GH Actions
COPY . /app

# Set production environment
ENV NODE_ENV=production

# Expose the Next.js default port
EXPOSE 3000

# Start the application
CMD ["npm", "run", "start"]


# # Use official Node.js image as a base
# FROM node:18-alpine AS builder

# # Set working directory
# WORKDIR /app

# # Copy package.json and package-lock.json
# COPY package.json package-lock.json ./

# # Install dependencies
# RUN npm ci

# # Copy the rest of the application
# COPY . .

# # Build Next.js application
# RUN npm run build

# # Use a minimal runtime image
# FROM node:18-alpine AS runner

# WORKDIR /app

# # Copy built Next.js files
# COPY --from=builder /app ./

# # Expose the Next.js default port
# EXPOSE 3000

# # Start the application
# CMD ["npm", "run", "start"]
