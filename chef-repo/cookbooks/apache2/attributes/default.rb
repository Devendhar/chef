case node['platform']
	when 'ubuntu', 'debian'
		default['apache']['packagename'] = 'apache2'
		default['apache']['servicename'] = 'apache2'
		default['apache']['documentroot'] = '/var/www'

	when 'centos', 'redhat', 'fedora'
		default['apache']['packagename'] = 'httpd'
		default['apache']['servicename'] = 'httpd'
		default['apache']['documentroot'] = '/var/www/html'
end
