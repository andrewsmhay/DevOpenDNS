#
# Cookbook Name:: opendns_ubuntu
# Recipe:: default
#
# Copyright 2014, OpenDNS
#
# All rights reserved
#

cookbook_file "/etc/resolvconf/resolv.conf.d/head" do
	source "head"
	mode "0644"
end

service "resolvconf" do
	action [ :enable, :restart ]
end
