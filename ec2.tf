// ec2 resource defination
resource "aws_instance" "webServer" {
    ami           = "ami-0f158b0f26f18e619" //Ubuntu Server 20.04 LTS
    instance_type = "t2.micro"
    security_groups = ["${aws_security_group.allow_http.name}"] // Link allow-http security group 
    user_data = file("./templates/ec2/user-data.sh") // get user_data commands from bash script 

    tags = {
      Name = "Web Server"  
    } 
}