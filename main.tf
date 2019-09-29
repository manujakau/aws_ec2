variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}
provider "aws" {
  region     = "${var.region}"
  access_key = "${var.AWS_ACCESS_KEY}"
  secret_key = "${var.AWS_SECRET_KEY}"
}
# create an instance
resource "aws_instance" "testvm" {
  ami             = "${lookup(var.amis, var.region)}"
  subnet_id       = "${var.subnet}"
  security_groups = "${var.securityGroups}"
  key_name        = "${var.keyName}"
  instance_type   = "${var.instanceType}"
  tags = {
    Name = "${var.instanceName}"
  }
  volume_tags = {
    Name = "${var.instanceName}"
  }
}
resource "aws_ebs_volume" "test_volume" {
  availability_zone = "${var.availabilityZone}"
  size              = "${var.volumeSize}"
  type              = "${var.volumeType}"
  tags = {
    Name = "${var.instanceName}"
  }
}
resource "aws_volume_attachment" "testvm_attach" {
  device_name = "${var.volumeDeviceName}"
  volume_id   = "${aws_ebs_volume.test_volume.id}"
  instance_id = "${aws_instance.testvm.id}"
}
