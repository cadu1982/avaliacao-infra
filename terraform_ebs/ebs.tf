resource "aws_ebs_volume" "ebs" {
  availability_zone = "us-east-1a"  
  size              = 10
  type              = "gp2"  

  tags = {
    Name = "mongo-data"
  }
}
