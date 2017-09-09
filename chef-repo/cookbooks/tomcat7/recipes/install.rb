#
# Cookbook:: tomcat
# Recipe:: install
#
# Copyright:: 2017, The Authors, All Rights Reserved.


package node['appserver']['package'] do
	action :install
end

package node['appserver']['additionalPackages'] do
	action :install
end
