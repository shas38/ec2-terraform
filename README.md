# ec2-terraform

This project demonstrates the concept of Infrastructure as Code using Terraform. In this project, we create an EC2 service on AWS and deploy a web application. 

## Project File Structure




## Project Prerequisite
To deploy the application, you will need to have terraform as well an AWS account with an IAM user that has appropriate IAM permission to create and destroy EC2 instances. 

## How to clone and run the project
1. Clone this project by running `git clone https://github.com/shas38/ec2-terraform.git`
2. Once the project has been cloned, chnage directory to ec2-terraform and run `terraform init`.
3. Once the initialisation process is complete run `terraform plan` to view the proposed change.
4. If satisfied then run `terraform apply` to deploy the EC2 service.
6. terraform will promt for the AWS Access key ID and the Secret access key. You will need to have a AWS IAM user which has the permision to create an EC2 serive in order for the project to work.
7. Once the deployment is complete the console will out put the public IP address and DNS of the EC2 service.
8. You can view the application using either the public IP address or the DNS.
9. Please note it takes up to <b>five minutes</b> for the deployment of the application to complete. Hence, you might have to wait even if the EC2 deployment is complete.
<img src="images/terraform.PNG">
