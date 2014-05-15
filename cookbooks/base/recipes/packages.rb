#
# Cookbook Name:: base
# Recipe:: packages
#
# Copyright 2014, Vincent Van Driessche
#
# No rights reserved - Feel free to redistribute
#
##############################
## Install default packages ##
##############################

%w{ iptables }.each                 { |security_package|  package security_package  }
%w{ ncdu iptraf htop tcpdump }.each { |debug_package|     package debug_package     }
%w{ git vim tree }.each             { |workbench_package| package workbench_package }
%w{ man }.each                      { |utility_package|   package utility_package   }
