# Ostad Ops Assignments

This repository contains all Ostad Operations assignments organized by modules.

## Repository Structure

```
ostad-ops-assignments/
├── README.md
├── .gitignore
└── module_7/
    ├── ec2.tf
    ├── provider.tf
    ├── s3.tf
    ├── variables.tf
    ├── versions.tf
    ├── terraform.tfvars.example
    └── .gitignore (inherited from parent)
```

## Modules

### Module 7: AWS Infrastructure with Terraform
- **EC2 Instance**: Configured t2.micro instance
- **S3 Bucket**: Storage bucket for the assignment
- **Networking**: VPC and security group configuration

## Getting Started

1. Clone this repository:
   ```bash
   git clone <repository-url>
   cd ostad-ops-assignments
   ```

2. Navigate to the specific module:
   ```bash
   cd module_7
   ```

3. Copy the example variables file:
   ```bash
   cp terraform.tfvars.example terraform.tfvars
   ```

4. Edit `terraform.tfvars` with your specific values:
   - AWS profile name
   - AWS region
   - Unique S3 bucket name
   - VPC ID
   - EC2 key pair name

5. Initialize and apply Terraform:
   ```bash
   terraform init
   terraform plan
   terraform apply
   ```

## Important Notes

- Never commit `terraform.tfvars` or `*.tfstate` files as they contain sensitive information
- Each module has its own `.gitignore` that inherits from the parent repository
- Use the example files as templates for your configurations

## Adding New Modules

When adding new assignments:

1. Create a new directory: `module_X/`
2. Add your Terraform files
3. Copy `terraform.tfvars.example` from an existing module and customize
4. Commit your changes

## Requirements

- Terraform >= 1.0
- AWS CLI configured with appropriate permissions
- Git

## Contributing

1. Create a feature branch for your changes
2. Test your Terraform configurations
3. Commit with descriptive messages
4. Push and create a pull request