# Example Project: Running Jenkins on an EC2 Machine

This project demonstrates how to set up and run Jenkins on an AWS EC2 instance 

## Prerequisites

- IAM role with necessary permissions
- EC2 instance (Amazon Linux 2 or Ubuntu recommended)
- Security group allowing HTTP (port 80) and Jenkins (port 8080)

## Steps

1. **Launch an EC2 Instance**
    - Choose an Amazon Linux 2 or Ubuntu AMI.
    - Configure instance details and attach the IAM role.
    - Add a security group with inbound rules for ports 22, 80, and 8080.

2. **Connect to the Instance**
    - Use SSH to connect to your EC2 instance:
      ```bash
      ssh -i your-key.pem ec2-user@your-ec2-public-ip
      ```

3. **Install Jenkins**
    - Update the package manager:
      ```bash
      sudo yum update -y  # For Amazon Linux
      sudo apt update -y  # For Ubuntu
      ```
    - Install Java:
      ```bash
      sudo yum install java-11-openjdk -y  # For Amazon Linux
      sudo apt install openjdk-11-jdk -y  # For Ubuntu
      ```
    - Add the Jenkins repository and install Jenkins:
      ```bash
      sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
      sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
      sudo yum install jenkins -y  # For Amazon Linux
      ```
      ```bash
      curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo tee \
         /usr/share/keyrings/jenkins-keyring.asc > /dev/null
      echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
         https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
         /etc/apt/sources.list.d/jenkins.list > /dev/null
      sudo apt update -y
      sudo apt install jenkins -y  # For Ubuntu
      ```

4. **Start Jenkins**
    - Start and enable Jenkins:
      ```bash
      sudo systemctl start jenkins
      sudo systemctl enable jenkins
      ```

5. **Access Jenkins**
    - Open a browser and navigate to `http://your-ec2-public-ip:8080`.
    - Retrieve the initial admin password:
      ```bash
      sudo cat /var/lib/jenkins/secrets/initialAdminPassword
      ```
    - Complete the setup wizard and install recommended plugins.

## Cleanup

- Terminate the EC2 instance when no longer needed to avoid charges.

## Notes

- Ensure your security group is configured correctly to allow traffic on required ports.
- Use a strong password for Jenkins and consider enabling HTTPS for secure access.
