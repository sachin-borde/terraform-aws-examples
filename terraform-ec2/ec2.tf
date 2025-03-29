resource "aws_instance" "web_server" {
  count                  = var.instance_count
  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = var.key_name
  vpc_security_group_ids = [aws_security_group.ec2_sg.id]

  tags = merge(
    var.tags,
    {
      Name = "web-server-${count.index + 1}"
    }
  )

  root_block_device {
    volume_size = 8
    volume_type = "gp2"
  }
}
