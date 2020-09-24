# ec2-terraform

This project demonstrates the concept of Infrastructure as Code using Terraform. In this project, we create an EC2 service on AWS and deploy a web application. 

## Project File Structure
The project is divided into the following files:
```
- ec2.tf            - EC2 resource declaration along with the user data for deploying the application.
- outputs.tf        - For outputting the public IP and DNS of the EC2 service.
- provider.tf       - For setting up AWS connection.
- sg.tf             - Security group definition.
- variables.tf      - For prompting the user to enter access_key and secret_key.
```

## Project Prerequisite

To deploy the application, you will need to have terraform as well an AWS account with an IAM user that has appropriate IAM permission to create and destroy EC2 instances. 

Instruction for creating an IAM user on AWS: https://docs.aws.amazon.com/IAM/latest/UserGuide/id_users_create.html
Instruction for setting up Terraform: https://learn.hashicorp.com/tutorials/terraform/install-cli

## How to clone and run the project

1. Clone this project by running `git clone https://github.com/shas38/ec2-terraform.git`
2. Once the project has been cloned, change directory to ec2-terraform and run `terraform init`.
3. Once the initialisation process is complete run `terraform plan` to view the proposed change.
4. If satisfied, then run `terraform apply` to deploy the EC2 service.
6. Terraform will prompt for the AWS Access Key ID and the Secret access key. You will need to have an AWS IAM user which has the permission to create an EC2 service for the project to work.
7. Once the deployment is complete the console will output the public IP address and DNS of the EC2 service.
8. You can view the application using either the public IP address or the DNS.
9. Please note it takes up to <b>five minutes</b> for the deployment of the application to complete. Hence, you might have to wait even if the EC2 deployment is complete.
<img src="images/terraform.PNG">
