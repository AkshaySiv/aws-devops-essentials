## What is AWS EKS?

Amazon Elastic Kubernetes Service (EKS) is a managed Kubernetes service provided by AWS. It simplifies the process of running Kubernetes on AWS by handling the control plane operations, such as scaling, patching, and managing the availability of Kubernetes clusters. With EKS, you can deploy, manage, and scale containerized applications using Kubernetes without needing to install or maintain your own Kubernetes control plane.

### Key Features:
- **Fully Managed**: AWS manages the Kubernetes control plane (Not data nodes /Worlers), ensuring high availability and scalability.
- **Integration with AWS Services**: Seamlessly integrates with other AWS services like IAM, VPC, and CloudWatch.
- **Security**: Provides built-in security features, including IAM roles for service accounts and encryption options.
- **Multi-Region Support**: Allows you to deploy applications across multiple AWS regions.

EKS is ideal for organizations looking to leverage Kubernetes for container orchestration while offloading the operational overhead to AWS.

### Worker Nodes

Worker nodes in EKS can be deployed using two options:

1. **Amazon EC2**: You can use Amazon EC2 instances to run your worker nodes, giving you full control over the instance types, sizes, and configurations.
2. **AWS Fargate**: A serverless compute engine for containers that allows you to run Kubernetes pods without managing the underlying infrastructure.

Both options provide flexibility depending on your workload requirements and operational preferences.