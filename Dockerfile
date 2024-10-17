FROM amazonlinux:2023
MAINTAINER Mkm

# Install PHP and iputils (for networking utilities like ping)
RUN dnf install -y php iputils

# Create the directory if it doesn't exist and copy index.php to the correct location
RUN mkdir -p /var/www/html
COPY index.php /var/www/html/

# Set the working directory
WORKDIR /var/www

# Command to start the PHP built-in server
CMD [ "php", "-S", "0.0.0.0:80", "-t", "/var/www/html" ]

# Expose port 80 for web traffic
EXPOSE 80

