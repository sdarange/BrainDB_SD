resource "aws_instance" "ec2" {
  ami = var.ami-id
  instance_type = var.instance-type
  key_name = var.key-name
  subnet_id = aws_subnet.public-subnet.id
  vpc_security_group_ids = [aws_security_group.security-group.id]
  iam_instance_profile = aws_iam_instance_profile.instance-profile.name

  root_block_device {
    volume_size = var.root-volume-size
    volume_type = "gp3"
    delete_on_termination = true
  }
  
  user_data = file("${path.module}/gitlab-runner-init.sh")

  tags = {
    Name = var.instance-name
  }
}