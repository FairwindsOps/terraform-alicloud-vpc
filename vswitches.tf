#Copyright 2017 Reactive Ops Inc.
#
#Licensed under the Apache License, Version 2.0 (the “License”);
#you may not use this file except in compliance with the License.
#You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
#Unless required by applicable law or agreed to in writing, software
#distributed under the License is distributed on an “AS IS” BASIS,
#WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#See the License for the specific language governing permissions and
#limitations under the License.

#
# Vswitches are a subnet in an AZ
#

resource "alicloud_vswitch" "admin" {
  count = "${var.az_count}"
  vpc_id = "${alicloud_vpc.default.id}"
  cidr_block = "${var.vpc_cidr_base}${lookup(var.admin_subnet_cidrs, format("zone%d", count.index))}"
  availability_zone = "${element(split(", ", var.alicloud_azs), count.index)}"
}

output "alicloud_vswitch_admin_ids" {
  value = ["${alicloud_vswitch.admin.*.id}"]
}

resource "alicloud_vswitch" "public" {
  count = "${var.az_count}"
  vpc_id = "${alicloud_vpc.default.id}"
  cidr_block = "${var.vpc_cidr_base}${lookup(var.public_subnet_cidrs, format("zone%d", count.index))}"
  availability_zone = "${element(split(", ", var.alicloud_azs), count.index)}"
}

output "alicloud_vswitch_public_ids" {
  value = ["${alicloud_vswitch.public.*.id}"]
}

resource "alicloud_vswitch" "private_prod" {
  count = "${var.az_count}"
  vpc_id = "${alicloud_vpc.default.id}"
  cidr_block = "${var.vpc_cidr_base}${lookup(var.private_prod_subnet_cidrs, format("zone%d", count.index))}"
  availability_zone = "${element(split(", ", var.alicloud_azs), count.index)}"
}

output "alicloud_vswitch_private_prod_ids" {
  value = ["${alicloud_vswitch.private_prod.*.id}"]
}

resource "alicloud_vswitch" "private_working" {
  count = "${var.az_count}"
  vpc_id = "${alicloud_vpc.default.id}"
  cidr_block = "${var.vpc_cidr_base}${lookup(var.private_working_subnet_cidrs, format("zone%d", count.index))}"
  availability_zone = "${element(split(", ", var.alicloud_azs), count.index)}"
}

output "alicloud_vswitch_private_working_ids" {
  value = ["${alicloud_vswitch.private_working.*.id}"]
}

