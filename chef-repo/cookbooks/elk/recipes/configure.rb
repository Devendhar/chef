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

template node['elk']['es'] do
	source 'elasticsearch.yml.erb'
	owner 'root'
	group 'elasticsearch'
	mode 0660
end

template node['elk']['jvm'] do
	source 'jvm.options.erb'
	owner 'root'
	group 'elasticsearch'
	mode 0660
end

template node['logstash']['inputconfig'] do
	source 'input.conf.erb'
	owner 'root'
	group 'root'
	mode 0644
end

template node['logstash']['outputconfig'] do
	source 'output.conf.erb'
	owner 'root'
	group 'root'
	mode 0644
end

template node['logstash']['filterconfig'] do
	source 'filter.conf.erb'
	owner 'root'
	group 'root'
	mode 0644
end

template node['filebeat']['conf'] do
	source 'filebeat.yml.erb'
	owner 'root'
	group 'root'
	mode 0600
	notifies :restart, "service[filebeat]"
end
