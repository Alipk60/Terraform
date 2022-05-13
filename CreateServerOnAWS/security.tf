resource "aws_security_group" "web_traffic" {

 name        = "Allow web traffic"

  ingress {

    from_port   = 22

    to_port     = 22

    protocol    = "TCP"

    cidr_blocks = ["0.0.0.0/0"]

  }

  egress {

    from_port     = 0

    to_port       = 0

    protocol      = "-1"

    cidr_blocks = ["0.0.0.0/0"]

  }

  ingress {

    from_port   = 80

    to_port     = 80

    protocol    = "TCP"

    cidr_blocks = ["0.0.0.0/0"]

  }
egress {

    from_port     = 0

    to_port       = 0

    protocol      = "-1"

    cidr_blocks = ["0.0.0.0/0"]

  }

  ingress {

    from_port   = 0

    to_port     = 65535

    protocol    = "TCP"

    cidr_blocks = ["18.208.224.84/32"]

  }

}

