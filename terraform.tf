provider "aws" {
    region  = "ap-south-1"
    access_key = "AKIA3REHR5DUSYGP6NTQ"
    secret_key = "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"
}

variable "istest" {}

resource "aws_instance" "app" {
    ami = "ami-0cca134ec43cf708f"
    instance_type = "t2.micro"
     count = var.istest == true ? 1 : 0
tags = {
    Name = "App_Server_1 "
   
}
}
resource "aws_instance" "web" {
    ami = "ami-0cca134ec43cf708f"
    instance_type = "t2.micro"
     count = var.istest == false ? 1 : 0
tags = {
    Name = "web_Server_1 "
   
}
}
