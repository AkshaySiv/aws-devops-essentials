# AWS Lambda

AWS Lambda is a serverless compute service provided by Amazon Web Services (AWS). It allows you to run code without provisioning or managing servers. You only pay for the compute time you consume, and it automatically scales your application by running code in response to events.

## Key Features
- **Event-driven**: Triggered by events such as HTTP requests, file uploads, or database updates or from cloudwatch. Lambda cannot itself run manually
- **Automatic scaling**: Handles scaling based on the number of incoming requests.
- **Pay-as-you-go**: Charges are based on the number of requests and execution time.
- **Helps in cost optimization**: AWS Lambda eliminates the need for provisioning and maintaining servers, reducing infrastructure costs. You are only charged for the compute time used during function execution, with no costs incurred when the function is idle. This pay-as-you-go model ensures efficient resource utilization and cost savings.
- **Security and Compliance**: AWS Lambda uses IAM for access control, encrypts data, and complies with standards like GDPR, HIPAA, and PCI DSS, ensuring secure and compliant operations. Additionally, it can monitor other AWS services by integrating with CloudWatch, enabling real-time logging, metrics, and alerts for enhanced security and operational insights.

## Common Use Cases
- Running backend logic for web or mobile applications.
- Processing data streams in real-time.
- Automating operational tasks.

For more details, visit the [AWS Lambda Documentation](https://aws.amazon.com/lambda/).

## Key Difference Between AWS EC2 and AWS Lambda

| Feature                | AWS EC2                                      | AWS Lambda                                  |
|------------------------|----------------------------------------------|--------------------------------------------|
| **Compute Model**      | Virtual servers requiring provisioning.      | Serverless, event-driven compute.          |
| **Scaling**            | Manual or auto-scaling with configuration.   | Automatic scaling based on events.         |
| **Billing**            | Pay for uptime of instances.                 | Pay per request and execution time.        |
| **Use Case**           | Long-running applications or custom setups.  | Short-lived tasks or event-driven logic.   |
| **Management**         | Requires managing OS, patches, and updates. | Fully managed by AWS.                      |

For more information, refer to the [AWS EC2 Documentation](https://aws.amazon.com/ec2/) and [AWS Lambda Documentation](https://aws.amazon.com/lambda/).

## Real-Time Example for AWS Lambda

### Use Case: Image Processing on S3 Upload

1. **Scenario**: A company wants to automatically resize images uploaded to an S3 bucket for use in their web application.
2. **How It Works**:
    - A user uploads an image to an Amazon S3 bucket.
    - This triggers an AWS Lambda function via an S3 event notification.
    - The Lambda function processes the image (e.g., resizes it) using a library like Pillow.
    - The processed image is saved to another S3 bucket or a specific folder within the same bucket.

3. **Benefits**:
    - Fully serverless and scalable.
    - Only incurs costs when images are uploaded and processed.
    - Simplifies the workflow without requiring a dedicated server.


### Default Execution Time for AWS Lambda

    The default maximum execution time for an AWS Lambda function is **3 seconds**. However, this can be configured up to a maximum of **15 minutes** (900 seconds) depending on the requirements of your application. You can adjust this setting in the function's configuration under the **Timeout** option.



For more details, refer to the [AWS Lambda Limits Documentation](https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-limits.html).

For more details on setting up such workflows, refer to the [AWS Lambda with S3 Tutorial](https://docs.aws.amazon.com/lambda/latest/dg/with-s3.html).

## Example Project

For a practical implementation of AWS Lambda, check out the [AWS Cost Optimizer Demo](https://github.com/AkshaySiv/aws-cost-optimizer-demo). This project demonstrates how to use AWS Lambda to optimize costs by automating tasks and leveraging serverless architecture effectively.