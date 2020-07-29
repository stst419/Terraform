provider "aws" {
        access_key = var.aws_access_key
        secret_key = var.aws_secret_key
        region     = var.region
}# create an instance
resource "aws_instance" "linux_instance" {
  ami             = lookup(var.amis, var.region)
#  key_name        = var.keyName
  instance_type   = var.instanceType

#  provisioner "file" {
#    source      = "Sentiment.py"
#    destination = "/tmp/Sentiment.py"
#  }  # Change permissions on bash script and execute from ec2-user.
  provisioner "remote-exec" {
    inline = [
      "chmod +x /tmp/Sentiment.py",
      "python /tmp/Sentiment.py",
    ]
  }

  # Login to the ec2-user with the aws key.
  connection {
    type        = "ssh"
    user        = "ec2-user"
    password    = ""
 #   private_key = file(var.keyPath)
    host        = self.public_ip
  } # end resource
}
