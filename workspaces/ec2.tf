resource "aws_instance" "my_ec2_instance_naming" {
  ami           = var.ami_id # Replace with a valid AMI ID for your region
  instance_type = lookup(var.instance_type,terraform.workspace)
  vpc_security_group_ids = [aws_security_group.allow-all.id]
  tags = merge(
    local.common_tags,
    {
      Name = "${local.common_name}-workspaces-multi-env"   
    }
  )
# terraform init -backend-config=dev/backend.tf
# terraform plan -var-file=dev/dev.tfvars
# terraform apply -auto-approve -var-file=dev/dev.tfvars

#common_tags when you run dev under dev of ec2 you can see
# Name will roboshop-dev-tfvars-multi-env
# Name
# roboshop-dev-tfvars-multi-env
# Project
# roboshop
# Terraform
# true
}

resource "aws_security_group" "allow-all" {
  name   = "${local.common_name}-workspaces-multi-env"
  
  egress {
    from_port        = 0   # all ports 
    to_port          = 0    # all ports 
    protocol         = "-1"   # -1 all protocols 
    cidr_blocks      = ["0.0.0.0/0"]
    
  }

  ingress {
    from_port        = 0   # all ports 
    to_port          = 0    # all ports 
    protocol         = "-1"   # -1 all protocols 
    cidr_blocks      = ["0.0.0.0/0"]
    
  }

   tags = merge(
    local.common_tags,
    {
      Name = "${local.common_name}-workspaces-multi-env"
    }
  )

}