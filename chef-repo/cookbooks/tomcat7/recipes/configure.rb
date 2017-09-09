#
# Cookbook:: tomcat7
# Recipe:: configure
#
# Copyright:: 2017, The Authors, All Rights Reserved.


template node['appserver']['userauthfile'] do
	source 'tomcat-users.erb'
	owner 'root'
	group 'tomcat'
	mode '0640'
end

cookbook_file node['appserver']['warlocation'] do
	source 'calendar.war'
	owner 'tomcat'
	group 'tomcat'
	notifies :restart, "service[#{node['appserver']['package']}]"
end
