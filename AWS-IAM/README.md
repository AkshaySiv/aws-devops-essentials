
# AWS Identity and Access Management (IAM)

AWS Identity and Access Management (IAM) is a web service that helps you securely manage access to AWS resources. IAM addresses the challenges of authentication and authorization.

---

## Key Concepts

### Users
- Represents individual people or services that need access to AWS resources.
- Each user has unique credentials (passwords, access keys).

### Groups
- A collection of IAM users.
- Permissions assigned to a group are inherited by all users within the group.

### Roles
- Used to grant temporary access to AWS resources.
- Suitable for applications, services, or external users (e.g., federated users).

### Policies
- JSON documents that define permissions.
- Can be attached to users, groups, or roles to specify allowed or denied actions.

### Multi-Factor Authentication (MFA)
- Adds an extra layer of security by requiring a second authentication factor (e.g., a code from a mobile app).

---

## Why Use IAM?
- Fine-grained control over AWS resource access.
- Enhanced security with MFA.
- Role-based access for applications and external users.

By using IAM, you can ensure that your AWS resources are accessible only to authorized users while maintaining a high level of security.
