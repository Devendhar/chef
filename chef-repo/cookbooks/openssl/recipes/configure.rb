#
# Cookbook:: openssl
# Recipe:: configure
#
# Copyright:: 2017, The Authors, All Rights Reserved.

openssl_x509 '/etc/pki/tls/certs/logstash-forwarder.crt' do
	common_name 'rhel7.example.com'
	org 'example'
	org_unit 'Lab'
	country 'IN'
	subject_alt_name = ["IP:192.168.33.35"]
	key_file '/etc/pki/tls/private/logstash-forwarder.key'
	expire 365
end

