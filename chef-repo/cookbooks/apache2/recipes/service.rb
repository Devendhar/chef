#
# Cookbook:: apache2
# Recipe:: service
#
# Copyright:: 2017, The Authors, All Rights Reserved.

service node['apache']['servicename'] do
	action [:enable, :start]
end
