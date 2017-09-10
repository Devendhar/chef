default['java']['jdk_version'] = '8'
default['java']['install_flavor'] = 'oracle'
default['java']['oracle']['accept_oracle_download_terms'] = true


case node['platform_family'] 
	when 'rhel'
		default['elk']['repo'] = '/etc/yum.repos.d/elasticsearch.repo'
		default['elk']['packages'] = ['elasticsearch', 'logstash', 'kibana']
end
