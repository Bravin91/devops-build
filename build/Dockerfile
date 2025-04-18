# Step 1: Use an official Node.js image as a base
FROM docker-language-server:23-slim

# Step 2: Set the working directory
WORKDIR /app

# Step 3: Copy package.json and package-lock.json
COPY package*.json ./

# Step 4: Install dependencies
RUN npm install

# Step 5: Copy the rest of the application
COPY . .

# Step 6: Build the React app
RUN npm run build

# Step 7: Use Nginx to serve the production build
FROM nginx:alpine

# Step 8: Copy the built React app to Nginx's public folder
COPY --from=build /app/build /usr/share/nginx/html

# Step 9: Expose port 80 to make the app accessible
EXPOSE 80

# Step 10: Start Nginx server
CMD ["nginx", "-g", "daemon off;"]