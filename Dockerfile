FROM nginx

# Remove the default Nginx configuration
RUN rm /etc/nginx/conf.d/default.conf

# Copy your Nginx configuration file
COPY my-flutter-app.conf /etc/nginx/conf.d/

# Copy the Flutter web app's build output
COPY . /var/www/my-flutter-app

CMD ["nginx", "-g", "daemon off;"]

