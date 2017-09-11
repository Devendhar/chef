#roles/apache2.rb
name "jenkins"
description "Jenkin"
run_list "recipe[tomcat7]"
#default_attributes({
#	"company" => "Opscode"
#})
