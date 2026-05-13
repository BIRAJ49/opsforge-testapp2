resource "aws_security_group" "k3s" {
  name        = "opsforge-k3s"
  description = "K3s starter access"
}

resource "aws_instance" "k3s" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_pair_name
  vpc_security_group_ids = [aws_security_group.k3s.id]
}

resource "aws_s3_bucket" "artifacts" {
  bucket = var.artifact_bucket_name
}
