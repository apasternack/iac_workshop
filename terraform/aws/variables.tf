variable "aws_access_key" {}
variable "aws_secret_key" {}

variable "aws_region" {
  description = "EC2 Region for the VPC"
  default = "us-west-2"
}

variable "availability_zone" {
  description = "Availability Zone"
  default = "us-west-2c"
}

variable "amis" {
    description = "AMIs by region"
    default = {
        us-west-2 = "ami-d2c924b2" 
    }
}

variable "vpc-fullcidr" {
  default = "172.16.0.0/16"
  description = "vpc cdir"
}

variable "key_name" {
  default = "do_terra_rsa"
  description = "Name of your SSH key in EC2"
}

# You can update this to match your personal public SSH key half.
variable "public_key" {
  default="ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDcB1fvWAQdhka3l1e3XSYZCIv9BLPMQbu+wwC+g/ssMh2K4VeVQk4exaXsYYJfGR0tfzc/fqZLAIfxhQlVP90xVE5skUZj0HYoKnKyJMa8QJ4wnuk5UqZe8RKmGmJOoDE7YqClxlQf9TQHFps232Qhcz9jvnIrZ4ESj2EponZeUENglcjNBDeYZXVhHB00SPICDOuTac9Z+5kfTcVlhhBCnai/uPopdOlxWh6KpLOqpG53oTnWq9Cj4PMVMfK6Dq/z0MizfKpKvvpeHGvorYuAXCp3ke+wqGtVCzBX8SB5bnLxSwrmeUIDRJmdjhmZuY47/CJw4UNjYY20+LwqOE+9f/4v26EQmG4DBaxfHvOVVYYeHCix9LKXUy/Poo6933aHYwGRtu54aNUlhc0sNq9k2HhwSlQgvvcTib9/U3o6K/cKHHKQyRDNGYtmkeOY6/mZWmlWLIypPwZzsIAz/F+fMkhis3CytMooIZaMh615ltlKyy5ooJSQ2TgQwFTSw6FJqBN2FeAnn9+AIv7HNnCXwm7jC3i4um0iCdPw5T2KJI1jyfFWVj2L0YpF+wxxRrJRQ1bC7a8/nekjBtbA3L8oTLtDOy9DAx55AL23URz068i/JEO0t/lb+I5eeHmGpZaAMPY/LnNK8cYBQXjFqmowmuiwsOdt9IgzyaiWKkI5QQ== adam.pasternack@gmail.com"
  description = "SSH Public key half to use for centos on the new host"
}

variable "key_path" {
  default = "~/.ssh/id_rsa.pub"
  description = "Path to your SSH private key half on local dev machine"
}

variable use_public_ip { 
  default = true 
}

