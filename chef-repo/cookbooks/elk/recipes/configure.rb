#
# Cookbook:: elk
# Recipe:: configure
#
# Copyright:: 2017, The Authors, All Rights Reserved.

#configuring elasticsearch repo on redhat flavor

template node['elk']['repo'] do
	source 'elastic.repo.erb'
	owner 'root'
	group 'root'
	mode '0644'
end
