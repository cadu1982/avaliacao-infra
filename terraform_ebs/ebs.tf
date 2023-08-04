resource "aws_ebs_volume" "ebs_volume" {
  availability_zone = "us-east-1a"  
  size              = 10
  type              = "gp2"  

  tags = {
    Name = "mongo-data"
  }
}

output "ebs_volume_id" {
  value = aws_ebs_volume.ebs_volume.id
}
