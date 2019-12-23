#Copyright 2017 FairwindsOps Inc.
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

resource "alicloud_vpc" "default" {
  provider = "alicloud.${var.alicloud_region}"
  name = "${var.alicloud_vpc_name}"
  cidr_block = "${var.vpc_cidr_base}.0.0/16"
}

output "alicloud_vpc_id" {
  value = "${alicloud_vpc.default.id}"
}

output "alicoud_vpc_cidr" {
  value = "${alicloud_vpc.default.cidr_block}"
}
