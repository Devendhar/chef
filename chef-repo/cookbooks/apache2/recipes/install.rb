#
# Cookbook:: apache2
# Recipe:: install
#
# Copyright:: 2017, The Authors, All Rights Reserved.

package node['apache']['packagename'] do
	action :install
end
