# AWS CloudFormation Templates (CFT)

AWS CloudFormation Templates (CFT) are JSON or YAML formatted files used to define the infrastructure and resources for your AWS environment. They enable Infrastructure as Code (IaC), allowing you to provision and manage AWS resources in a repeatable and automated manner.

## Key Features
- **Declarative Syntax**: Define what resources are needed, and AWS CloudFormation handles the provisioning.
- **Version Control**: Store templates in version control systems for better collaboration and tracking.
- **Repeatability**: Reuse templates to create consistent environments across multiple deployments.

## Common Use Cases
- Automating infrastructure deployment.
- Managing resource dependencies.
- Scaling environments efficiently.

For more details, refer to the [AWS CloudFormation Documentation](https://docs.aws.amazon.com/cloudformation/).

## Detect Drift

**Drift detection** in AWS CloudFormation helps identify changes made to your stack resources outside of CloudFormation templates. This ensures that your infrastructure remains consistent with the defined configuration.

### Key Points
- **What is Drift?**  
    Drift occurs when the actual configuration of stack resources differs from the expected configuration defined in the CloudFormation template.
    
- **How to Detect Drift?**  
    Use the AWS Management Console, AWS CLI, or SDKs to initiate drift detection on a stack or specific resources.

- **Benefits**:  
    - Ensures compliance with defined infrastructure.
    - Helps identify unauthorized or accidental changes.
    - Simplifies troubleshooting and auditing.

For more information, visit the [Detecting Drift Documentation](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/detect-drift-stack.html).

## Resource Anatomy

Each resource in an AWS CloudFormation template is defined using a specific structure. Understanding the anatomy of a resource helps in creating accurate and efficient templates.

### Key Components
1. **Logical ID**:  
    A unique identifier for the resource within the template. It is used to reference the resource in other parts of the template.

2. **Type**:  
    Specifies the AWS resource type (e.g., `AWS::EC2::Instance`, `AWS::S3::Bucket`)

3. **Properties**:  
    Defines the configuration settings for the resource. These vary depending on the resource type.

### Example
Here is an example of an Amazon S3 bucket resource:

```yaml
Resources:
  MyS3Bucket:
     Type: AWS::S3::Bucket
     Properties:
        BucketName: my-example-bucket
        VersioningConfiguration:
          Status: Enabled
```

### Explanation
- `MyS3Bucket`: Logical ID for the resource.
- `Type`: Specifies that this is an S3 bucket.
- `Properties`: Configures the bucket name and enables versioning.

For a complete list of resource types and their properties, refer to the [AWS Resource Types Reference](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html).


