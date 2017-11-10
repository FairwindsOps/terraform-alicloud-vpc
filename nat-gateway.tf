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

resource "alicloud_nat_gateway" "nat_gateway" {
  vpc_id = "${alicloud_vpc.default.id}"
  spec = "${var.nat_gateway_spec}"
  bandwidth_packages = ["${var.nat_bandwidth_packages}"]
  depends_on = ["alicloud_vswitch.public"]
}

output "alicoud_nat_gateway_count" {
  value = "${length(alicloud_nat_gateway.nat_gateway.*.bandwidth_package_ids)}"
}

output "alicloud_nat_gateway_ids" {
  value = ["${alicloud_nat_gateway.nat_gateway.*.id}"]
}
