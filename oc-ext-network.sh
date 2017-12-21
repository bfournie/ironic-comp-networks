# Create external network
openstack network create --external --provider-physical-network datacentre --provider-network-type vlan --provider-segment 101 public

openstack subnet create --network public --subnet-range 10.8.145.0/24 --gateway 10.8.145.1 --allocation-pool start=10.8.145.60,end=10.8.145.70 --no-dhcp public-subnet

# Create router

openstack router create bm-router

openstack router add subnet bm-router provisioning-subnet
 
openstack router set bm-router --external-gateway public 

# Note - security groups rules were created outside of script

openstack floating ip create public 
