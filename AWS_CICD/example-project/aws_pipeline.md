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

Once build is completed the image should be available in dockerhub

![alt text](images/dockerhub.png)


Now Lets intergate codebuild with AWS codepipeline

## 🔄 Steps to Create a CodePipeline and Integrate with CodeDeploy

1. **Navigate to CodePipeline**  
    Go to the [AWS Management Console](https://aws.amazon.com/console/) and open the CodePipeline service.

2. **Create a New Pipeline**  
    - Click on **Create pipeline**.
    - Provide a **Pipeline name** (`sample-project-pipeline`).
    - Select a new role for the pipeline.

3. **Add Source Stage**  
    - Choose the **Source provider** GitHub
    - Connect your repository

4. **Add Build Stage**  
    - Choose **AWS CodeBuild** as the build provider.
    - Select the previously created CodeBuild project (`sample-project`).

<!-- 5. **Add Deploy Stage**  
    - Choose **AWS CodeDeploy** as the deploy provider.
    - Select the application and deployment group configured in CodeDeploy. -->

6. **Review and Create Pipeline**  
    - Review the pipeline configuration.
    - Click **Create pipeline** to save and start the pipeline.

7. **Trigger the Pipeline**  
    - Push changes to the configured branch in your repository.
    - The pipeline will automatically trigger, build, and deploy the application.

By following these steps, you can integrate CodeBuild with CodePipeline and deploy your application using CodeDeploy.

![alt text](images/codepipeline.png)