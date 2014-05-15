service 'isc-dhcp-server' do
  supports restart: true, status: true, reload: true
  action [:enable]
end
