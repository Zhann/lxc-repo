#
# Cookbook Name:: dhcp
# Recipe:: server_service
#
# Copyright 2014, Vincent Van Driesshe
#
# No rights reserved - Please do redistribute
#

# encoding: UTF-8

service 'isc-dhcp-server' do

  supports restart: true, status: true, reload: true
  action [:enable]

end
