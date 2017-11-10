
provider "alicloud" {
  access_key = "${var.alicloud_access_key}"
  secret_key = "${var.alicloud_secret_key}"
  region     = "${var.alicloud_region}"
}

module "vpc" {   
  source                                  = "/work/terraform-alicloud-vpc/"
  alicloud_vpc_name                       = "${var.alicloud_vpc_name}"
  alicloud_access_key                     = "${var.alicloud_access_key}"
  alicloud_secret_key                     = "${var.alicloud_secret_key}"
  alicloud_region                         = "${var.alicloud_region}"

  az_count                           = "${var.az_count}"
  alicloud_azs                       = "${var.alicloud_azs}"

  vpc_cidr_base                      = "${var.vpc_cidr_base}"

  admin_subnet_parent_cidr           = "${var.admin_subnet_parent_cidr}"
  admin_subnet_cidrs                 = "${var.admin_subnet_cidrs}"

  public_subnet_parent_cidr          = "${var.public_subnet_parent_cidr}"
  public_subnet_cidrs                = "${var.public_subnet_cidrs}"

  private_prod_subnet_parent_cidr    = "${var.private_prod_subnet_parent_cidr}"
  private_prod_subnet_cidrs          = "${var.private_prod_subnet_cidrs}"

  private_working_subnet_parent_cidr = "${var.private_working_subnet_parent_cidr}"
  private_working_subnet_cidrs       = "${var.private_working_subnet_cidrs}"

  nat_bandwidth_packages             = "${var.nat_bandwidth_packages}"
}


