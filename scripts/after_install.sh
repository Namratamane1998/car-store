#!/bin/bash

echo "Running AfterInstall Script for car-store"

# Navigate to the application directory
cd /var/www/html/car-store

# Change ownership to the ec2-user so files are accessible
sudo chown -R ec2-user:ec2-user /var/www/html/car-store

# Navigate to the directory where the app is stored
cd /var/www/html/car-store

# Install Node.js dependencies
npm install

# Restart the Node.js application using PM2
pm2 restart car-store --log-date-format 'DD-MM HH:mm:ss.SSS'

echo "AfterInstall Script Completed"
