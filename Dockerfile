FROM nginx:1.19.2

## Step 1:
# Copy source code to working directory
COPY static/index.html /usr/share/nginx/html/

## Step 2:
# Expose port 80
EXPOSE 80
