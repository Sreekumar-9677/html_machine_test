# ── Stage 1: Use nginx to serve the static HTML ──────────────
FROM nginx:alpine

# Remove default nginx page
RUN rm -rf /usr/share/nginx/html/*

# Copy our HTML file
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80

# Nginx runs by default
CMD ["nginx", "-g", "daemon off;"]
