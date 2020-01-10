########################################################
# Create ICD database with connection to VM
########################################################

data "ibm_resource_group" "group" {
  name = "default"
}

resource "ibm_database" "test_acc" {
  resource_group_id = "${data.ibm_resource_group.group.id}"
  name              = "demo-postgres"
  service           = "databases-for-postgresql"
  plan              = "standard"
  location          = "eu-gb"
  adminpassword     = "adminpassword"

  whitelist = {
    address     = "${ibm_is_subnet.subnet1.ipv4_cidr_block}"
    description = "${ibm_is_subnet.subnet1.name}"
  }
  whitelist = {
    address     = "${ibm_is_subnet.subnet2.ipv4_cidr_block}"
    description = "${ibm_is_subnet.subnet2.name}"
  }

  tags = ["tag1", "tag2"]

  adminpassword                = "password12"
  members_memory_allocation_mb = 3072
  members_disk_allocation_mb   = 20480

  users = {
    name     = "user123"
    password = "password12"
  }
}

output "ICD Postgresql database connection string" {
  value = "http://${"${ibm_database.test_acc.connectionstrings.0.composed}"}"
}