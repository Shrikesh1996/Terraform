#!/bin/bash

# Define log file
LOGFILE="jenkins_install.log"

# Function to log messages
log() {
    echo "$(date +'%Y-%m-%d %H:%M:%S') - $1" | tee -a $LOGFILE
}

# Update package index
log "Updating package index..."
sudo apt update | tee -a $LOGFILE

sudo apt install docker.io -y
sudo chmod 666 /var/run/docker.sock

# Update package index
echo "Updating package index..."
sudo apt update

# Install Java OpenJDK 11
echo "Installing OpenJDK 11..."
sudo apt install -y openjdk-11-jdk

# Verify installation
echo "Verifying Java installation..."
java -version

echo "Java installation completed successfully!"



# Update package index
echo "Updating package index..."
sudo apt update

# Install Java OpenJDK 11 if not already installed
if ! command -v java &> /dev/null; then
  echo "Installing OpenJDK 11..."
  sudo apt install -y openjdk-11-jdk
fi

# Add Jenkins repository key and repository
echo "Adding Jenkins repository..."
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'

# Update package index again after adding Jenkins repository
sudo apt update

# Install Jenkins
echo "Installing Jenkins..."
sudo apt install -y jenkins

# Start Jenkins service
echo "Starting Jenkins service..."
sudo systemctl start jenkins

# Enable Jenkins service to start on system boot
sudo systemctl enable jenkins

# Print Jenkins initial admin password
echo "Waiting for Jenkins to initialize..."
sleep 30s  # Wait for Jenkins to initialize fully
echo "Jenkins initial admin password:"
sudo cat /var/lib/jenkins/secrets/initialAdminPassword

# Print Jenkins status
echo "Jenkins status:"
sudo systemctl status jenkins

echo "Jenkins installation completed successfully!"
