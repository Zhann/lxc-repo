#####################
## isc-dhcp-server ##
#####################

default['server']['interfaces']  = [ 'eth0' ]


################
## dhcpd.conf ##
################

default['server']['ddns_update_style'] = 'none'
default['server']['domain_name'] = 'main'
default['server']['domain_name_servers'] = '192.168.2.3'

default['server']['default_lease_time'] = 86400
default['server']['max_lease_time'] = 604800

default['server']['is_authoritative'] = true

default['server']['log_type'] = 'local7'


#################
## subnet.list ##
#################

default['server']['subnet']['subnet'] = '192.168.2.0'
default['server']['subnet']['netmask'] = '255.255.255.0'
default['server']['subnet']['range']['start'] = '192.168.2.10'
default['server']['subnet']['range']['stop'] = '192.168.2.254'
default['server']['subnet']['subnetmask'] = node['server']['subnet']['netmask']
default['server']['subnet']['broadcast_address'] = '192.168.2.255'
default['server']['subnet']['routers'] = [ '192.168.2.1' ]
