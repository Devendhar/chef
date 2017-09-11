#
# Cookbook:: elk
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

include_recipe 'java'
include_recipe 'elk::configure'
include_recipe 'elk::install'
include_recipe 'elk::service'
