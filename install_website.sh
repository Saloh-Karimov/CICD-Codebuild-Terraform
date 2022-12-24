#Elevate our privileges
sudo su

#Update all the packages in the instance
yum update -y

#Install the Apache webserver on the instance
yum install -y httpd

#Navigate to the directory that was created when Apache webserver is installed
cd /var/www/html

#Download and unzip the zip file of the website from the GitHub repository
wget https://github.com/Saloh-Karimov/techmax/archive/refs/heads/main.zip
unzip main.zip
cp -r techmax-main/* /var/www/html/

# Force remove the zip file
rm -rf techmax-main main.zip

# Enable the service to start automatically on boot
systemctl enable httpd 

#Start Apache server
systemctl start httpd
