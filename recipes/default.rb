#
# Cookbook Name:: lamp
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved
	
execute "sudo yum -y update" do
	action :run
end	

%w{ncompress sharutils}.each do |pkg|
	package pkg do
		action :install
	end
end

