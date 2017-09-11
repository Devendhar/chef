#
# Cookbook:: elk
# Recipe:: service
#
# Copyright:: 2017, The Authors, All Rights Reserved.


service 'elasticsearch' do
	action :start
end

service 'logstash' do
	action :start
end

service 'kibana' do 
	action :start
end

service 'filebeat' do
	action :start
end
