module "myvpc1" {
 source = "./project"
 v_vpc_cidr="10.0.0.0/16"
 v_azs=["ap-southeast-1a","ap-southeast-1b","ap-southeast-1c"]
 v_pub_sns= "true"
 v_prv_sns= "false"
 v_pub_sns_cidrs = ["10.0.0.0/24","10.0.1.0/24","10.0.2.0/24"]
 v_prv_sns_cidrs = ["10.0.3.0/24","10.0.4.0/24","10.0.5.0/24"]
 o_vpc_id=module.myvpc1.o_vpc_id
 o_pub_sn_ids=module.myvpc1.o_pub_sn_ids
 o_prv_sn_ids=module.myvpc1.o_prv_sn_ids
}

output "vpcid" {
  value=module.myvpc1.o_vpc_id
  }
output "vpc1sns" {
 value = module.myvpc1.o_pub_sn_ids
 }