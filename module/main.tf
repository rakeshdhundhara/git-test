module "ec2" {
  source = "../R_ec2"
  for_each = var.inst
  ami=each.value.ami_id
  instance_name=each.value.instance_name
  instance_type = each.value.instance
  subnet_id =each.value.subnet_id
  owner = each.key
}