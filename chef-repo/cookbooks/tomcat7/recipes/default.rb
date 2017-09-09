#
# Cookbook:: tomcat7
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

include_recipe 'tomcat7::install'
include_recipe 'tomcat7::service'
include_recipe 'tomcat7::configure'
