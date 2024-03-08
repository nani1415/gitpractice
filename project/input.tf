variable "v_vpc_cidr" {
      type=string
}
variable "v_pub_sns" {
	 default="true"
}
variable "v_prv_sns" {
	default="true"
}
variable "v_pub_sns_cidrs" {
   type=list
   }
variable "v_prv_sns_cidrs" {
    type= list
}
variable "v_azs" {
  type=list
  }

variable "o_vpc_id" {
}
variable "o_pub_sn_ids"{
 type=list
 }
variable "o_prv_sn_ids"{
 type=list
 }