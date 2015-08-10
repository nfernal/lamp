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




include_recipe "java"
include_recipe "maven"

##  Install mysql 
 #change service name and initial root password
mysql_service 'foo' do
  port '3306'
  version '5.6'
  initial_root_password 'password'  
  action [:create, :start]
end

include_recipe "tomcat"
include_recipe "apache2"
#include_recipe "deploy-play"
include_recipe "clamav"
include_recipe "openssl"
include_recipe "jenkins::master"