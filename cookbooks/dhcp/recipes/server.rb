#
# Cookbook Name:: dhcp
# Recipe:: server
#
# Copyright 2014, Vincent Van Driesshe
#
# No rights reserved - Please do redistribute
#

include_recipe 'dhcp::server_package'
include_recipe 'dhcp::server_service'
include_recipe 'dhcp::server_config'
