#
# Cookbook:: apache2
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

include_recipe 'apache2::install'
include_recipe 'apache2::service'
include_recipe 'apache2::homepage'
