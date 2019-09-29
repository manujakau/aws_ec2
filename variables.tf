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
  default = "yourkey"
}
variable "subnet" {
  default = "subnet-yoursubnet"
}
variable "securityGroups" {
  type    = "list"
  default = ["sg-yoursg"]
}
variable "instanceName" {
  default = "Test_Instance"
}
# ami-c58c1dd3 is the free Amazon Linux AMI
variable "amis" {
  default = {
    "us-east-2" = "ami-yourami"
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
