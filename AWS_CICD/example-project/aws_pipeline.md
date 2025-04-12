# 📦 Simple Static HTML Site with Docker and Nginx

This project demonstrates how to serve a static `index.html` page using Docker and Nginx. Useful for AWS CodeBuild/CodePipeline demos.

---


## 🚀 Steps to Create a Project in AWS CodeBuild

1. **Navigate to CodeBuild**  
    Go to the [AWS Management Console](https://aws.amazon.com/console/) and open the CodeBuild service.

2. **Create a New Project**  
    - Click on **Create build project**.
    - Provide a **Project name** (`sample-project`).

3. **Source Configuration**  
    - Choose the **Source provider** select GitHub
    - Connect your repository

4. **Environment Settings**  
    - Select the **Environment image** (e.g., AWS-managed image).
    - Choose the **Operating system** and **Runtime** Ubuntu
    - Specify the **Buildspec file** (use `buildspec.yml` from github) or define inline commands
    - Create a service role `codebuild-sample-project-service-role`

5. **Start the Build**  
    - Save the project and click **Start build** to test the configuration.

    ![alt text](images/pipeline.png)

---  

## 🔑 Using AWS Systems Manager Parameter Store for Docker Credentials

To securely manage Docker credentials, you can use AWS Systems Manager Parameter Store. Follow these steps:

1. **Store Docker Credentials in Parameter Store**  
    - Navigate to the [AWS Systems Manager Console](https://console.aws.amazon.com/systems-manager/).
    - Go to **Parameter Store** and click **Create parameter**.
    - Set the **Type** to `SecureString`.
    ![alt text](images/systemmanager.png)

2. **Update IAM Role with Access to Parameter Store**  
    - Navigate to the [IAM Console](https://console.aws.amazon.com/iam/).
    - Select the IAM role  `codebuild-sample-project-service-role `
    - Attach a policy that grants access to the Parameter Store `AmazonSSMFullAccess`    

By granting this access, your CodeBuild project can securely retrieve Docker credentials from the Parameter Store.


## Start Build

![alt text](images/build.png)

![alt text](images/dockerhub.png)


