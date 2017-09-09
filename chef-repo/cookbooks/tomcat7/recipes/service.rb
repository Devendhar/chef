#
# Cookbook:: tomcat7
# Recipe:: service
#
# Copyright:: 2017, The Authors, All Rights Reserved.

service node['appserver']['package'] do
	action [:enable, :start]
end
