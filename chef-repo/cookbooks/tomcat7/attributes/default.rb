case node['platform']
	when 'ubuntu', 'debian'
		default['appserver']['package']='tomcat7'
		default['appserver']['additionalPackages']='tomcat7-admin'
		default['appserver']['userauthfile'] = '/etc/tomcat7/tomcat-users.xml'
		default['appserver']['warlocation'] = '/var/lib/tomcat7/webapps/benefits.war'

	when 'rhel', 'centos', 'fedora'
		default['appserver']['package']='tomcat'
		default['appserver']['additionalPackages']=['tomcat-webapps', 'tomcat-admin-webapps']
		default['appserver']['userauthfile'] = '/etc/tomcat/tomcat-users.xml'
		default['appserver']['warlocation'] = '/var/lib/tomcat/webapps/calendar.war'
end
