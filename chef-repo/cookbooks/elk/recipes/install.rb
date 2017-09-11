#
# Cookbook:: elk
# Recipe:: install
#
# Copyright:: 2017, The Authors, All Rights Reserved.

package node['elk']['packages'] do
	action :install
end

package node['elk']['filebeat'] do
	action :install
end
