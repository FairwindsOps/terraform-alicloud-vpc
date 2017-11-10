alicloud_access_key = "LTAIkuWsQ9cOEER6"
alicloud_secret_key = "nD61D6dCwUhJT0oSPKJ0Ah7zsGshPB"
alicloud_vpc_name  = "20171004"
vpc_cidr_base = "172.20"
alicloud_azs = "us-east-1b"
az_count = "1"
#aws_inventory_path = "$INFRASTRUCTURE_REPO/plugins/inventory"
alicloud_region = "us-east-1"

admin_subnet_parent_cidr = ".0.0/22"
admin_subnet_cidrs = {
    zone0 = ".0.0/24"
    zone1 = ".1.0/24"
    zone2 = ".2.0/24"
    zone3 = ".3.0/24"
  }

public_subnet_parent_cidr = ".4.0/22"
public_subnet_cidrs = {
    zone0 = ".4.0/24"
    zone1 = ".5.0/24"
    zone2 = ".6.0/24"
    zone3 = ".7.0/24"
  }

private_prod_subnet_parent_cidr = ".8.0/22"
private_prod_subnet_cidrs = {
    zone0 = ".8.0/24"
    zone1 = ".9.0/24"
    zone2 = ".10.0/24"
    zone3 = ".11.0/24"
  }

private_working_subnet_parent_cidr = ".12.0/22"
private_working_subnet_cidrs = {
    zone0 = ".12.0/24"
    zone1 = ".13.0/24"
    zone2 = ".14.0/24"
    zone3 = ".15.0/24"
  }

nat_bandwidth_packages = [
    {
      ip_count = 2
      bandwidth = 100
    },
    {
      ip_count = 1
      bandwidth = 50
    },
  ]
