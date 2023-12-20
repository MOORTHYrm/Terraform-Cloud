#!/bin/bash

# Update system packages (apt for Ubuntu)
apt-get update -y

# Install Apache (or any other desired software)
apt-get install -y apache2

# Start Apache
systemctl start apache2

# Create a simple HTML file with user data
echo "<!DOCTYPE html>
<html>
<head>
    <title>Welcome to My Website</title>
</head>
<body>
    <h1>Hello, this is my website!</h1>
    <p>Today's date is: <?php echo date('Y-m-d H:i:s'); ?></p>
</body>
</html>" > /var/www/html/index.html

