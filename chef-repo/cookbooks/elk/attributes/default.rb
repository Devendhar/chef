default['java']['jdk_version'] = '8'
default['java']['install_flavor'] = 'oracle'
default['java']['oracle']['accept_oracle_download_terms'] = true


case node['platform_family'] 
	when 'rhel'
		default['elk']['repo'] = '/etc/yum.repos.d/elasticsearch.repo'
		default['elk']['packages'] = ['elasticsearch', 'logstash', 'kibana']
		default['elk']['filebeat'] = 'filebeat'
		default['elk']['es'] = '/etc/elasticsearch/elasticsearch.yml'
		default['elk']['jvm'] = '/etc/elasticsearch/jvm.options'
		default['logstash']['inputconfig'] = '/etc/logstash/conf.d/input.conf'
		default['logstash']['outputconfig'] = '/etc/logstash/conf.d/output.conf'
		default['logstash']['filterconfig'] = '/etc/logstash/conf.d/filter.conf'
		default['filebeat']['conf'] = '/etc/filebeat/filebeat.yml'
end
