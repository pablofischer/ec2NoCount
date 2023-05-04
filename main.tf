resource "aws_instance" "ec2_instances" {
  for_each = var.instance_volumes
  
  ami = var.instance_ami
  instance_type = var.instance_type
  subnet_id = var.subnet_ids[each.key % length(var.subnet_ids)]
  
  root_block_device {
    volume_size = each.value.size
  }
  
  tags = {
    Name = each.key
  }
}
