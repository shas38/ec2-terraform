resource "aws_security_group" "allow_http" {
    name        = "allow_http"
    description = "Allow http traffic"

    // Incoming traffic http only
    ingress {
        description = "HTTP"
        from_port   = 80 
        to_port     = 80
        protocol =   "tcp"
        cidr_blocks =  ["0.0.0.0/0"]
    }
    // Outgoing traffic Allow all port all protocol 
    egress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
        Name = "allow_http"
    }
}