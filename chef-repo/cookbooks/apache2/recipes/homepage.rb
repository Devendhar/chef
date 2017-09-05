#
# Cookbook:: apache2
# Recipe:: homepage
#
# Copyright:: 2017, The Authors, All Rights Reserved.

template "#{node['apache']['documentroot']}/index.html" do
	source 'index.html.erb'
	mode '0644'
end
