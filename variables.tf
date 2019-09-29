variable "region" {
  default = "us-east-2"
}
variable "availabilityZone" {
  default = "us-east-2a"
}
variable "instanceType" {
  default = "t2.micro"
}
variable "keyName" {
  default = "wp-key"
}
variable "subnet" {
  default = "subnet-18fb2763"
}
variable "securityGroups" {
  type    = "list"
  default = ["sg-094525ffd8583a9f8"]
}
variable "instanceName" {
  default = "Test_Instance"
}
# ami-c58c1dd3 is the free Amazon Linux AMI
variable "amis" {
  default = {
    "us-east-2" = "ami-0c72fedba2036966b"
  }
}
variable "volumeType" {
  default = "gp2"
}
variable "volumeSize" {
  default = 10
}
variable "volumeDeviceName" {
  default = "/dev/sdb"
}
