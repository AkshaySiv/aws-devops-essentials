## Sample HTTPD Project: Hosting a Website on EC2

### Prerequisites
1. An AWS account.
2. An EC2 instance running Amazon Linux 2.
3. Security group with HTTP (port 80) access enabled.

### Steps to Host a Website
1. **Connect to Your EC2 Instance**  
    Use SSH to connect to your EC2 instance:
    ```bash
    ssh -i your-key.pem ec2-user@your-ec2-public-ip
    ```

2. **Install Apache HTTPD**  
    Update the package manager and install the Apache HTTPD server:
    ```bash
    sudo yum update -y
    sudo yum install httpd -y
    ```

3. **Start and Enable HTTPD Service**  
    Start the HTTPD service and enable it to run on boot:
    ```bash
    sudo systemctl start httpd
    sudo systemctl enable httpd
    ```

4. **Create a Sample Website**  
    Create an `index.html` file in the default web directory:
    ```bash
    echo "<h1>Welcome to My Sample HTTPD Project!</h1>" | sudo tee /var/www/html/index.html
    ```

5. **Access the Website**  
    Open a browser and navigate to `http://your-ec2-public-ip`. You should see your sample website.

### Notes
- Ensure your EC2 instance's security group allows inbound traffic on port 80.
- Replace `your-ec2-public-ip` with the public IP address of your EC2 instance.
- You can customize the `index.html` file to host your own content.