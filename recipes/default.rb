#
# Cookbook Name:: lamp
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved
	

include_recipe "lamp::prereq"
include_recipe "java"
include_recipe "java::set_java_home"
include_recipe "java::set_attributes_from_version"
include_recipe "maven"
include_recipe "apache2"
include_recipe "clamav"
include_recipe "openssl"
include_recipe "jenkins::master"
include_recipe "lamp::mysql"
include_recipe "lamp::tomcat7"






