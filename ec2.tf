resource "aws_instance" "webServer" {
    ami           = "ami-0f158b0f26f18e619" //Ubuntu Server 20.04 LTS
    instance_type = "t2.micro"
    security_groups = ["${aws_security_group.allow_http.name}"] // Link allow-http security group 
    user_data = <<-EOF
                    #!/bin/bash
                    apt install ruby -y
                    git clone https://github.com/rea-cruitment/simple-sinatra-app.git
                    cd simple-sinatra-app/
                    gem install bundler
                    bundle install
                    bundle exec rackup -p 80 --host 0.0.0.0
                EOF
    tags = {
      Name = "Web Server"  
    } 
}