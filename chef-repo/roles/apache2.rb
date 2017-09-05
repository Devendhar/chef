#roles/apache2.rb
name "apache"
description "Apache Servers"
run_list "recipe[my-company]","recipe[apache2]"
default_attributes({
	"company" => "Opscode"
})
