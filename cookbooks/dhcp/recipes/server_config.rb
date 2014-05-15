template '/etc/default/isc-dhcp-server' do
  source 'isc-dhcp-server.erb'
  variables(
    interfaces: node[:server][:interfaces]
  )
  notifies :restart, 'service[isc-dhcp-server]', :delayed
end

template '/etc/dhcp/dhcpd.conf' do
  source 'dhcpd.conf.erb'
  variables ( {
    ddns_update_style: node[:server][:ddns_update_style],
    domain_name: node[:server][:domain_name],
    domain_name_servers: node[:server][:domain_name_servers],
    default_lease_time: node[:server][:default_lease_time],
    max_lease_time: node[:server][:max_lease_time],
    is_authoritative: node[:server][:is_authoritative],
    log_type: node[:server][:log_type]
  } )
  notifies :restart, 'service[isc-dhcp-server]', :delayed
end

# TODO: Make it possible to supply multiple subnets
template '/etc/dhcp/subnet.list' do
  source 'subnet.list.erb'
  variables(
    subnet: node[:server][:subnet][:subnet],
    netmask: node[:server][:subnet][:netmask],
    range_start: node[:server][:subnet][:range][:start],
    range_stop: node[:server][:subnet][:range][:stop],
    subnetmask: node[:server][:subnet][:subnetmask],
    broadcast_address: node[:server][:subnet][:broadcast_address],
    routers: node[:server][:subnet][:routers]
  )
  notifies :restart, 'service[isc-dhcp-server]', :delayed
end
