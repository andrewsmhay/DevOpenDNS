#
# Cookbook Name:: opendns_rh_and_centos
# Recipe:: default
#
# Copyright 2014, OpenDNS
#
# All rights reserved
#

cookbook_file "/etc/resolv.conf" do
	source "resolv.conf"
	mode "0644"
end

service "network" do
	action [ :restart ]
end
