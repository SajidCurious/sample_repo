# Step 1: Use the official Nginx image as a base
FROM nginx:alpine

# Step 2: Copy the HTML file to the Nginx HTML directory
COPY index.html /usr/share/nginx/html/index.html

# Step 3: Expose port 80 for web traffic
EXPOSE 80

# Step 4: Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
