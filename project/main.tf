resource aws_vpc "vpc1" {
   cidr_block = var.v_vpc_cidr
}
resource aws_subnet "sn1" {
   count=var.v_pub_sns?length(var.v_pub_sns_cidrs):0
   vpc_id=aws_vpc.vpc1.id
   cidr_block=var.v_pub_sns_cidrs[count.index]
   availability_zone=var.v_azs[count.index]
}
resource aws_subnet "sn2" {
   count=var.v_prv_sns=="true"?length(var.v_prv_sns_cidrs):0
   vpc_id=aws_vpc.vpc1.id
   cidr_block=var.v_prv_sns_cidrs[count.index]
   availability_zone=var.v_azs[count.index]
}
resource aws_internet_gateway "igw"{
    count=var.v_pub_sns?1:0
	vpc_id=aws_vpc.vpc1.id
}

output "o_vpc_id"{
  value = aws_vpc.vpc1.id
}
output "o_pub_sn_ids"{
  value = aws_subnet.sn1.*.id
}
output "o_prv_sn_ids"{
  value = aws_subnet.sn2.*.id
}